import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({
    Key? key,
  }) : super(key: key);

  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);
    final w = rnd.nextDouble() * 350;
    final h = rnd.nextDouble() * 400;
    final bradios = BorderRadius.circular(rnd.nextDouble() * 50);
    final bwidth = Border.all(
        width: rnd.nextDouble() * 30, color: Color.fromRGBO(b, r, g, 1));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: const Icon(Icons.accessibility_new),
          onPressed: () {
            setState(() {});
          }),
      appBar: AppBar(
        title: const Text('wds 4 AnimatedContainer'),
        centerTitle: true,
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.bounceIn,
          width: w,
          height: h,
          decoration: BoxDecoration(
              color: Color.fromRGBO(r, g, b, 1),
              borderRadius: bradios,
              border: bwidth),
        ),
      ),
    );
  }
}
