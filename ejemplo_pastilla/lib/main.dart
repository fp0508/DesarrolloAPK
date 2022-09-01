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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Pastilla(
                'Primera',
                color: Colors.red,
              ),
              Pastilla(
                'Segunda',
                color: Colors.blue,
              ),
              Pastilla(
                'Tercera',
                color: Colors.green,
              ),
              Pastilla(
                'Cuarta',
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pastilla extends StatelessWidget {
  final String texto;
  final Color color;
  const Pastilla(
    this.texto, {
    Key? key,
    this.color = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54, offset: Offset(5, 5), blurRadius: 5)
            ]),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white, fontSize: 22),
        ));
  }
}
