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
          backgroundColor: Colors.red,
          title: const Text('wds 3 wrap'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Tag('Hola'),
                  Tag('cómo'),
                  Tag('estas'),
                  Tag(';este es un'),
                  Tag('día muy'),
                  Tag('lindo para'),
                  Tag('salir con'),
                  Tag('la bici')
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                //               direction: Axis.vertical,
                children: [
                  Tag('Hola'),
                  Tag('cómo'),
                  Tag('estas'),
                  Tag(';este es un'),
                  Tag('día muy'),
                  Tag('lindo para'),
                  Tag('salir con'),
                  Tag('la bici')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  //const Tag({Key? key,}) : super(key: key);
  final String texto;

  Tag(this.texto);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar:
          const CircleAvatar(backgroundColor: Colors.white, child: Text('Ch')),
      backgroundColor: Colors.orange,
      label: Text(
        texto,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
