import 'package:flutter/material.dart';
import 'package:rakan_aneuk/classification/classification_result_screen.dart';
import 'package:rakan_aneuk/history/curve_history_screen.dart';

class HistoryScreen extends StatefulWidget {
  static const routeName = '/history';

  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart),
            onPressed: () {
              Navigator.of(context).pushNamed(CurveHistoryScreen.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).pushNamed(
                CurveHistoryScreen.routeName,
                arguments: ClassificationResultArguments(id: index.toString()),
              );
            },
            title: Text('Riwayat ke-$index'),
            subtitle: Text('Detail riwayat ke-$index'),
          );
        },
      ),
    );
  }
}
