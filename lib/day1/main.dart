import 'package:flutter/material.dart';
import 'package:login_page/day1/themes/app_color.dart';
import 'package:login_page/day1/themes/app_theme.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginPage(),
    theme: AppTheme.light,
    darkTheme: AppTheme.dark,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
  ));
}
