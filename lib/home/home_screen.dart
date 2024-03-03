import 'package:flutter/material.dart';
import 'package:rakan_aneuk/classification/clasification_screen.dart';
import 'package:rakan_aneuk/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _Logo(),
            SizedBox(height: 32),
            _MenuSection(),
          ],
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/logo.png',
      height: 200,
    );
  }
}

class _MenuSection extends StatelessWidget {
  const _MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(ClassificationScreen.routeName);
          },
          child: const Text('Klasifikasi Gizi Anak'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Saran Kebutuhan Gizi Anak'),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed(ProfileScreen.routeName);
          },
          child: const Text('Profil Saya'),
        ),
      ],
    );
  }
}


