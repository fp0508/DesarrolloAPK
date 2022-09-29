import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds10 Table',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wds10 Table'),
        centerTitle: true,
      ),
      body: Center(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          //defaultColumnWidth: FixedColumnWidth(100),
          columnWidths: const {
            0: FractionColumnWidth(.5),
          },
          border: TableBorder.all(width: 10, color: Colors.red),
          children: [
            TableRow(children: [
              RectanguloLarge(),
              RectanguloMedium(),
              RectanguloSmall()
            ]),
            TableRow(children: [
              RectanguloMedium(),
              RectanguloLarge(),
              RectanguloSmall()
            ]),
            TableRow(children: [
              RectanguloSmall(),
              RectanguloMedium(),
              RectanguloLarge()
            ])
          ],
        ),
      ),
    );
  }
}

class RectanguloLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 200,
      margin: const EdgeInsets.all(5),
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}

class RectanguloMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 150,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.teal),
    );
  }
}

class RectanguloSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(color: Colors.yellow),
    );
  }
}
