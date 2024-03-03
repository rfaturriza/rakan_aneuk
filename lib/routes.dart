// {Map<String, Widget Function(BuildContext)> routes = const <String, WidgetBuilder>{}}

import 'package:flutter/material.dart';
import 'package:rakan_aneuk/history/curve_history_screen.dart';
import 'package:rakan_aneuk/profile/edit_profile_screen.dart';
import 'package:rakan_aneuk/profile/profile_screen.dart';

import 'auth/login_screen.dart';
import 'auth/register_screen.dart';
import 'classification/clasification_screen.dart';
import 'classification/classification_result_screen.dart';
import 'history/history_screen.dart';
import 'home/home_screen.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  LoginScreen.routeName: (context) => const LoginScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  EditProfileScreen.routeName: (context) => const EditProfileScreen(),
  HistoryScreen.routeName: (context) => const HistoryScreen(),
  CurveHistoryScreen.routeName: (context) => const CurveHistoryScreen(),
  ClassificationScreen.routeName: (context) => const ClassificationScreen(),
  ClassificationResultScreen.routeName: (context) =>
      const ClassificationResultScreen(),
};
