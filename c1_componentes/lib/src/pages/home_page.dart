import 'package:flutter/material.dart';

import 'package:c1_componentes/src/providers/menu_provider.dart';
import 'package:c1_componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: const [],
      builder: (context, AsyncSnapshot snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    for (var opt in data) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);

          /*  final route = MaterialPageRoute(builder: (context) {
            return AlertPage();
          });
          Navigator.push(context, route);*/
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    }
    return opciones;
  }
}
