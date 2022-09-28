import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacidad;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    opacidad = Tween(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds 7 FadeTransition',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('wds 7 FadeTransition'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.dashboard),
            onPressed: () {
              controller.forward(from: 0.0);
            }),
        body: Center(
          child: FadeTransition(
            opacity: opacidad,
            child: const Rectangulo(),
          ),
        ),
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  const Rectangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(color: Colors.deepOrange),
    );
  }
}
