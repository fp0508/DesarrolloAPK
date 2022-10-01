import 'package:flutter/material.dart';
import 'package:wds_23_transform/home_screen.dart';
import 'package:wds_23_transform/prespective_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds23 Transform',
      initialRoute: 'prespectiveScreen',
      routes: {
        'home': (_) => HomeScreen(),
        'prespectiveScreen': (_) => PrespectiveScreen(),
      },
    );
  }
}
