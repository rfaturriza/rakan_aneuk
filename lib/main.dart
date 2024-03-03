import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rakan_aneuk/classification/clasification_screen.dart';
import 'package:rakan_aneuk/classification/classification_result_screen.dart';
import 'package:rakan_aneuk/history/history_screen.dart';
import 'package:rakan_aneuk/home/home_screen.dart';
import 'package:rakan_aneuk/auth/register_screen.dart';
import 'package:rakan_aneuk/profile/edit_profile_screen.dart';
import 'package:rakan_aneuk/profile/profile_screen.dart';
import 'package:rakan_aneuk/routes.dart';

import 'firebase_options.dart';
import 'auth/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaKan Aneuk',
      routes: routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          return const LoginScreen();
        },
      ),
    );
  }
}
