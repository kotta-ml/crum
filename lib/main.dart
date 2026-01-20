import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const CramblocApp());
}

class CramblocApp extends StatelessWidget {
  const CramblocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRAMBLOC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFE87722),
        scaffoldBackgroundColor: const Color(0xFFE8E8E8),
        fontFamily: 'Arial',
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE87722),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}