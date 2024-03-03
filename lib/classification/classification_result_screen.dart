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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          const Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Hasil Klasifikasi'),
                ),
                Divider(),
                ListTile(
                  title: Text('Umur'),
                  subtitle: Text('24 bulan'),
                ),
                ListTile(
                  title: Text('Berat Badan'),
                  subtitle: Text('12 kg'),
                ),
                ListTile(
                  title: Text('Tinggi Badan'),
                  subtitle: Text('90 cm'),
                ),
                ListTile(
                  title: Text('Status Gizi'),
                  subtitle: Text('Normal'),
                ),
              ],
            ),
          ),
          Text(
            'Keterangan: Anak Anda memiliki status gizi normal',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
