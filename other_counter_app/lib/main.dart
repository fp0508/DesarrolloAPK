import 'package:flutter/material.dart';
import 'package:other_counter_app/screens/bonus_screen.dart';

import 'package:other_counter_app/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Other Counter App',
        home: BonusScreen());
  }
}
