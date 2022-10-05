import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final estilo = TextStyle(fontSize: 44);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('wds_1_safearea'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: ListView(
                children: List.filled(
                    14,
                    Text(
                      'Hola Mundo',
                      style: estilo,
                    ))),
          )),
    );
  }
}
