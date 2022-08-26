import 'package:flutter/material.dart';
import 'package:mini_apps/screens/home_screen.dart';
import 'package:mini_apps/screens/my_canine_age_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Apps',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'my_canine_age': (_) => MyCanineAgeScreen()
      },
    );
  }
}
