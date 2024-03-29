import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rakan_aneuk/classification/calculate/calculate_zscoring.dart';

class ClassificationResultArguments {
  final bool canPop;
  final String id;

  ClassificationResultArguments({
    required this.id,
    this.canPop = false,
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
    void onBack() {
      if (args.canPop) {
        Navigator.pop(context);
        return;
      }
      Navigator.popUntil(context, (route) => route.isFirst);
    }

    return PopScope(
      canPop: args.canPop,
      onPopInvoked: (willPop) async {
        if (willPop) {
          Navigator.pop(context);
          return;
        }
        Navigator.popUntil(context, (route) => route.isFirst);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hasil Klasifikasi'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: ElevatedButton(
            onPressed: onBack,
            child: const Text('Kembali'),
          ),
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
            final result = ResultZScoringAge.values.firstWhere(
              (element) => element.name == data['result'],
            );
            final dateReadable = () {
              final date = data['created_at'].toDate();
              return DateFormat.yMMMMEEEEd(
                'id_ID',
              ).format(date);
            }();
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
                        title: const Text('Tanggal'),
                        subtitle: Text(dateReadable),
                      ),
                      ListTile(
                        title: const Text('Jenis Kelamin'),
                        subtitle: Text('${data['gender']}'),
                      ),
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
                        subtitle: Text(result.name),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Keterangan: ${result.description}',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
