import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rakan_aneuk/history/history_screen.dart';

import '../auth/login_screen.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var isSigningOut = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(EditProfileScreen.routeName);
            },
            child: const Text('Ubah Profil'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(HistoryScreen.routeName);
            },
            child: const Text('Riwayat Saya'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              foregroundColor: Theme.of(context).colorScheme.onError,
            ),
            onPressed: () async {
              try {
                setState(() {
                  isSigningOut = true;
                });
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  LoginScreen.routeName,
                  (route) => false,
                );
              } catch (e) {
                debugPrint(e.toString());
              } finally {
                setState(() {
                  isSigningOut = false;
                });
              }
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
