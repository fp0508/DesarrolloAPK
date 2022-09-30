import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds_9_PageView',
      home: Scaffold(
          body: Center(
        child: SizedBox(
          width: double.infinity,
          height: 320,
          child: PageView(
            reverse: true,
            controller: PageController(viewportFraction: 0.20),
            //scrollDirection: Axis.vertical,
            children: const [
              Pagina(Colors.blue),
              Pagina(Colors.red),
              Pagina(Colors.green)
            ],
          ),
        ),
      )),
    );
  }
}

class Pagina extends StatelessWidget {
  final Color color;
  const Pagina(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
    );
  }
}
