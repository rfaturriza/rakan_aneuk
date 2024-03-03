import 'package:flutter/material.dart';

class CurveHistoryScreen extends StatefulWidget {
  static const routeName = '/history/curve';
  const CurveHistoryScreen({super.key});

  @override
  State<CurveHistoryScreen> createState() => _CurveHistoryScreenState();
}

class _CurveHistoryScreenState extends State<CurveHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Grafik Pertumbuhan'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          const Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Riwayat Curva Pertumbuhan'),
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
            'Riwayat Curva Pertumbuhan',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 16),
          const Text(
            'Riwayat Curva Pertumbuhan adalah data pertumbuhan anak yang telah diukur dan dicatat sejak lahir hingga usia 5 tahun. Data ini digunakan untuk menilai pertumbuhan anak apakah normal atau tidak.',
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
