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
          body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
              //height: 100,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              //height: 100,
            ),
          ),
        ],
      )),
    );
  }
}
