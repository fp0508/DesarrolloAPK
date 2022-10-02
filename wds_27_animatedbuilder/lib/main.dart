import 'package:flutter/material.dart';
import 'package:wds_27_animatedbuilder/animation_circular.dart';
import 'package:wds_27_animatedbuilder/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds27 AnimatedBuilder',
      initialRoute: 'circular',
      routes: {
        'home': (_) => HomeScreen(),
        'circular': (_) => AnimationCircular(),
      },
    );
  }
}
