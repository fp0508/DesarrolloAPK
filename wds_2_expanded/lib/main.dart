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
            appBar: AppBar(
              title: const Text('wds_2_expanded'),
            ),
            body: Row(
              children: [
                Cuadrado(Colors.cyan),
                Expanded(flex: 3, child: Cuadrado(Colors.amber)),
                Cuadrado(Colors.cyan),
                Expanded(child: Cuadrado(Colors.pink)),
              ],
            )));
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;
  //const Cuadrado({super.key});
  Cuadrado(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: 50,
        height: 50,
        decoration: BoxDecoration(color: this.color));
  }
}
