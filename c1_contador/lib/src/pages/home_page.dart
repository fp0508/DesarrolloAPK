import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final estiloTexto = TextStyle(fontSize: 33);

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _crearBotones(),
      appBar: AppBar(
        title: const Text(
          'Titulo',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Número de Clicks:',
            style: estiloTexto,
          ),
          Text('$conteo', style: estiloTexto.copyWith(fontSize: 55)),
        ],
      )),
    );
  }

  _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            onPressed: () {
              _cero();
            }),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              _restar();
            }),
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              _agregar();
            }),
      ],
    );
  }

  void _agregar() {
    setState(() => conteo++);
  }

  void _restar() {
    setState(() => conteo--);
  }

  void _cero() {
    setState(() => conteo = 0);
  }
}
