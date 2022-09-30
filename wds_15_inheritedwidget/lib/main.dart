import 'package:flutter/material.dart';
import 'package:wds_15_inheritedwidget/models/MisColores.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds15 InheritedWidget',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return MisColoresW(
      color1 = color1,
      color2 = color2,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Rectangulo1(), Rectangulo2()],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.change_circle),
            onPressed: () {
              setState(() {
                color1 = Colors.indigo;
                color2 = Colors.cyan;
              });
            }),
      ),
    );
  }
}

class Rectangulo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MiscoloresW =
        context.dependOnInheritedWidgetOfExactType<MisColoresW>();
    return Container(
      width: 70,
      height: 70,
      color: MiscoloresW!.color1,
    );
  }
}

class Rectangulo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MiscoloresW =
        context.dependOnInheritedWidgetOfExactType<MisColoresW>();
    return Container(
      width: 70,
      height: 70,
      color: MiscoloresW!.color2,
    );
  }
}
