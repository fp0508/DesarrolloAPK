import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ColumnasContenido()));
  }
}

class ColumnasContenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final children = [
      Expanded(child: Rectangulo()),
      Expanded(child: Rectangulo())
    ];
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return (constraints.maxWidth < 600)
            ? Column(children: children)
            : Row(
                children: children,
              );
      },
    );
  }
}

class Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      color: Colors.amber,
    );
  }
}
