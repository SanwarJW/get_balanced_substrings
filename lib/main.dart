import 'package:flutter/material.dart';
import 'package:get_balanced_substrings/balanced_substring_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Balanced Substrings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BalancedSubstringScreen(),
    );
  }
}
