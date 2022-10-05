import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

/*
  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
    }

    return lista;
  }
*/
  List<Widget> _crearItemsCorta() {
    var widgets = opciones
        .map((item) => Column(
              children: [
                ListTile(
                  hoverColor: Colors.cyan[50],
                  title: Text('$item!'),
                  subtitle: const Text('Cualquier cosa'),
                  leading: const Icon(Icons.accessibility_new),
                  trailing: const Icon(Icons.arrow_circle_right_sharp),
                  onTap: () {},
                ),
                const Divider(),
              ],
            ))
        .toList();

    return widgets;
  }
}
