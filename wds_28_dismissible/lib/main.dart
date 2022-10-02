import 'package:flutter/material.dart';
import 'package:wds_28_dismissible/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds28 Dismissible',
      initialRoute: 'home',
      routes: {'home': (_) => HomeScreen()},
      theme: ThemeData.light().copyWith(primaryColor: Colors.amber),
    );
  }
}
