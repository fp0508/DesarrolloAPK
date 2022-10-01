import 'package:flutter/material.dart';
import 'package:wds_25_align/align_screen.dart';
import 'package:wds_25_align/home_screen.dart';
import 'package:wds_25_align/stack_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds_25_align',
      initialRoute: 'stack',
      routes: {
        'home': (_) => HomeScreen(),
        'align': (_) => AlignScreen(),
        'stack': (_) => StackScreen()
      },
    );
  }
}
