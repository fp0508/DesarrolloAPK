import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 35, 100),
          child: Container(
            color: Colors.deepOrange,
          ),
        ));
  }
}
