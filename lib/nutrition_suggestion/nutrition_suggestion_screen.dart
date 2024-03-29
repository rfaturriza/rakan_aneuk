import 'package:flutter/material.dart';

class NutritionSuggestionScreen extends StatelessWidget {
  static const routeName = '/suggestion';
  const NutritionSuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saran Nutrisi'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          const Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Porsi Seimbang Bayi Usia 0-24 bulan'),
                ),
                Divider(),
                ListTile(
                  title: Text('Usia 0 – 24 bulan'),
                  subtitle: Text('Bayi pada usia ini harus diberikan ASI'),
                ),
                ListTile(
                  title: Text('Usia 0 - 6 bulan'),
                  subtitle: Text(
                      'Jangan berikan makanan/minuman selain ASI kepada bayi di usia 0-6 bulan'),
                ),
                ListTile(
                  title: Text('Usia 6 - 9 bulan'),
                  subtitle: Text(
                    'Bayi mulai diberi MPASI berupa makanan lumat. Frekuensi makan bagi bayi per hari usia 6 – 9 bulan sebanyak 2 – 3 kali makanan lumat + 1 – 2 kali makanan selingan ditambah ASI. Jumlah setiap kali makan terdiri dari 2 – 3 sendok makan penuh setiap kali makan dan tingkatkan secara perlahan sampai setengah dari cangkir mangkok ukuran 250 ml tiap kali makan.',
                  ),
                ),
                ListTile(
                  title: Text('Usia 9 - 12 bulan'),
                  subtitle: Text(
                    'Bayi diberi MPASI makanan lembek. Pada usia 9 – 12 bulan diberi 3 – 4 kali makanan lembek + setengah kali makanan selingan ditambah ASI. Porsi makanan sebanyak setengah mangkuk ukuran 250 ml.',
                  ),
                ),
                ListTile(
                  title: Text('Usia 12 - 24 bulan'),
                  subtitle: Text(
                    'Bayi mulai diberi makanan keluarga. Untuk bayi usia 12 – 24 bulan, diberi sebanyak 3 – 4 kali makanan keluarga ditambah 1 – 2 kali makanan selingan plus ASI. Jumlah setiap kali makan sebanyak ¾ mangkuk ukuran 250 ml.',
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Sumber : Kementerian Kesehatan RI (29/11/2022)',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
