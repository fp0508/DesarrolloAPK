import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds 8 FloatingActionButton',
      home: MiPagina1(),
    );
  }
}

class MiPagina1 extends StatelessWidget {
  const MiPagina1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: BotonFlotante(),
      bottomNavigationBar: BarraNavegacion(),
    );
  }
}

class MiPagina2 extends StatelessWidget {
  const MiPagina2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: const BotonFlotante(),
      bottomNavigationBar: const BarraNavegacion(),
    );
  }
}

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
      BottomNavigationBarItem(icon: Icon(Icons.security), label: 'Buscar'),
      BottomNavigationBarItem(icon: Icon(Icons.adjust), label: 'Buscar')
    ]);
  }
}

class BotonFlotante extends StatelessWidget {
  const BotonFlotante({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        highlightElevation: 0,
        elevation: 0,
        child: const Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const MiPagina2()));
        });
  }
}
