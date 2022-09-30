import 'package:flutter/material.dart';
import 'package:wds_21_layoutbuilder/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'wds21 LayoutBuilder',
        home: HomePage());
  }
}
