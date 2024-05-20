import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'calculate/calculate_zscoring.dart';
import 'classification_result_screen.dart';

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
  var gender = Gender.male;

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
        final calculateZScoring = CalculateZScoring(
          age: int.parse(ageController.text),
          weight: double.parse(weightController.text),
          height: double.parse(heightController.text),
          gender: gender,
        );
        final status = await calculateZScoring.statusBBPB();
        final result =
            await FirebaseFirestore.instance.collection('classification').add({
          'age': int.parse(ageController.text),
          'weight': double.parse(weightController.text),
          'height': double.parse(heightController.text),
          'gender': gender.name,
          'result': status.name,
          'created_at': FieldValue.serverTimestamp(),
          'uid': FirebaseAuth.instance.currentUser?.uid,
        });
        Navigator.pushNamed(
          context,
          ClassificationResultScreen.routeName,
          arguments: ClassificationResultArguments(
            id: result.id,
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Pastikan data yang diinputkan benar'),
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
        title: const Text('Klasifikasi Gizi Anak'),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            DropdownButton(
              isExpanded: true,
              value: gender,
              items: Gender.values.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e.name),
                );
              }).toList(),
              onChanged: (value) {
                debugPrint('value: $value');
                setState(() {
                  gender = value ?? Gender.male;
                });
              },
            ),
            TextFormField(
              controller: ageController,
              decoration: const InputDecoration(
                labelText: 'Umur (bulan)',
              ),
              // make validation just for number 0-24
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Umur tidak boleh kosong';
                }
                final age = int.tryParse(value);
                if (age == null) {
                  return 'Umur harus berupa angka';
                }
                if (age < 0 || age > 24) {
                  return 'Umur harus diantara 0-24 bulan';
                }
                return null;
              },
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: weightController,
              decoration: const InputDecoration(
                labelText: 'Berat Badan (kg)',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Berat badan tidak boleh kosong';
                }
                final weight = double.tryParse(value);
                if (weight == null || weight <= 0) {
                  return 'Berat badan harus lebih dari 0';
                }
                return null;
              },
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: heightController,
              decoration: const InputDecoration(
                labelText: 'Panjang Badan (cm)',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Panjang badan tidak boleh kosong';
                }
                final weight = double.tryParse(value);
                if (weight == null || weight <= 0) {
                  return 'Panjang badan harus lebih dari 0';
                }
                return null;
              },
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
