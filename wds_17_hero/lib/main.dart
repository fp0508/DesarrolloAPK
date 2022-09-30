import 'package:flutter/material.dart';
import 'package:wds_17_hero/HomePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds17 Hero',
      home: HomePage(),
    );
  }
}
