import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  static const routeName = '/profile/edit';

  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    final user = FirebaseAuth.instance.currentUser;
    nameController.text = user?.displayName ?? '';
    emailController.text = user?.email ?? '';
    FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .get()
        .then((value) {
      dateOfBirthController.text = value.get('dateOfBirth');
    });
  }

  @override
  Widget build(BuildContext context) {
    Future<void> onSubmit() async {
      FocusScope.of(context).unfocus();
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        setState(() {
          isLoading = true;
        });
        final user = FirebaseAuth.instance.currentUser;
        await user?.updateDisplayName(nameController.text);
        await FirebaseFirestore.instance
            .collection('users')
            .doc(user?.uid)
            .set({
          'name': nameController.text,
          'dateOfBirth': dateOfBirthController.text,
          'email': emailController.text,
        });
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message ?? 'Mohon maaf, terjadi kesalahan'),
          ),
        );
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profil'),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            TextFormField(
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Nama tidak boleh kosong';
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: dateOfBirthController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Tanggal lahir tidak boleh kosong';
                }
                return null;
              },
              readOnly: true,
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: dateOfBirthController.text.isEmpty
                      ? DateTime.now()
                      : DateTime.parse(dateOfBirthController.text),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  dateOfBirthController.text =
                      date.toIso8601String().split('T').first;
                }
              },
              decoration: const InputDecoration(
                labelText: 'Tanggal Lahir',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: emailController,
              enabled: false,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: isLoading ? null : onSubmit,
              child: isLoading
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    )
                  : const Text('Edit Profil'),
            ),
          ],
        ),
      ),
    );
  }
}
