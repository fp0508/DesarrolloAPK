import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          body: Center(
        child: Container(
          height: 250,
          width: 250,
          color: Colors.blueGrey,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.blue,
              height: 80,
              width: 80,
            ),
          ),
        ),
      )),
    );
  }
}
