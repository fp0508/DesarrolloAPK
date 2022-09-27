import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _mostrar_Alert(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: StadiumBorder(),
              elevation: 6.0,
            ),
            child: const Text('Mostrar Alerta')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_arrow_left_rounded),
      ),
    );
  }

  void _mostrar_Alert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: Colors.cyan[50],
            title: Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              OutlinedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('OK')),
            ],
          );
        },
        barrierDismissible: false);
  }
}
