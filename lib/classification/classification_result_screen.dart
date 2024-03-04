import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ClassificationResultArguments {
  final String id;

  ClassificationResultArguments({
    required this.id,
  });
}

class ClassificationResultScreen extends StatefulWidget {
  static const routeName = '/classification/result';

  const ClassificationResultScreen({super.key});

  @override
  State<ClassificationResultScreen> createState() =>
      _ClassificationResultScreenState();
}

class _ClassificationResultScreenState
    extends State<ClassificationResultScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as ClassificationResultArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Klasifikasi'),
      ),
      body: FutureBuilder(
          future: FirebaseFirestore.instance
              .collection('classification')
              .doc(args.id)
              .get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (!snapshot.hasData) {
              return const Center(
                child: Text('Data tidak ditemukan'),
              );
            }
            final data = snapshot.data?.data() as Map<String, dynamic>;
            return ListView(
              padding: const EdgeInsets.all(16),
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      const ListTile(
                        title: Text('Hasil Klasifikasi'),
                      ),
                      const Divider(),
                      ListTile(
                        title: const Text('Umur'),
                        subtitle: Text('${data['age']} bulan'),
                      ),
                      ListTile(
                        title: const Text('Berat Badan'),
                        subtitle: Text('${data['weight']} kg'),
                      ),
                      ListTile(
                        title: const Text('Tinggi Badan'),
                        subtitle: Text('${data['height']} cm'),
                      ),
                      ListTile(
                        title: const Text('Status Gizi'),
                        subtitle: Text('${data['result']}'),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Keterangan: ${data['result'] == 'Gizi Baik' ? 'Anak Anda memiliki status gizi baik' : 'Anak Anda memiliki status gizi buruk'}',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            );
          }),
    );
  }
}
