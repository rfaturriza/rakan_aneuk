import 'package:flutter/material.dart';
import 'package:rakan_aneuk/history/history_screen.dart';

import '../nutrition_suggestion/nutrition_suggestion_screen.dart';

class HistoryMenuScreen extends StatelessWidget {
  static const routeName = '/history-menu';
  const HistoryMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  NutritionSuggestionScreen.routeName,
                );
              },
              child: const Text('Saran Kebutuhan Gizi Anak'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  HistoryScreen.routeName,
                );
              },
              child: const Text('Riwayat Hasil Klasifikasi'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
