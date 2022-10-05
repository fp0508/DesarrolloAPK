import 'package:flutter/material.dart';

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
  double opacidad = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.opacity,
          ),
          onPressed: () {
            setState(() {
              opacidad = (opacidad == 1) ? 0 : 1;
            });
          }),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 20,
          children: [
            Rectangulo(Colors.green, 1),
            Rectangulo(Colors.cyan, opacidad),
            Rectangulo(Colors.yellow, 1)
          ],
        ),
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final Color color;
  final double opacidad;

  Rectangulo(this.color, this.opacidad);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 2),
      opacity: opacidad,
      curve: Curves.easeOut,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
