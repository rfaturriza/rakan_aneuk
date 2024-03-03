import 'package:flutter/material.dart';

class ClassificationScreen extends StatefulWidget {
  static const routeName = '/classification';

  const ClassificationScreen({super.key});

  @override
  State<ClassificationScreen> createState() => _ClassificationScreenState();
}

class _ClassificationScreenState extends State<ClassificationScreen> {
  final ageController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    Future<void> onSubmit() async {
      if (!formKey.currentState!.validate()) {
        return;
      }
      try {
        setState(() {
          isLoading = true;
        });
      } finally {
        setState(() {
          isLoading = false;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Klasifikasi Gizi Anak'),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            TextFormField(
              controller: ageController,
              decoration: const InputDecoration(
                labelText: 'Umur (bulan)',
              ),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: weightController,
              decoration: const InputDecoration(
                labelText: 'Panjang Badan (kg)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: heightController,
              decoration: const InputDecoration(
                labelText: 'Tinggi Badan (cm)',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: isLoading ? null : onSubmit,
              child: isLoading
                  ? const CircularProgressIndicator()
                  : const Text('Proses'),
            ),
          ],
        ),
      ),
    );
  }
}
