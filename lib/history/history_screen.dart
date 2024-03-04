import 'package:cloud_firestore/cloud_firestore.dart';
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
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('classification')
              .snapshots(),
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
            final data = snapshot.data!.docs;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      CurveHistoryScreen.routeName,
                      arguments:
                          ClassificationResultArguments(id: index.toString()),
                    );
                  },
                  title: Text(data[index]['created_at'].toDate().toString()),
                  subtitle: Text('Hasil: ${data[index]['result']}'),
                );
              },
            );
          }),
    );
  }
}
