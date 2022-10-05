import 'package:flutter/material.dart';

void main() => runApp(const ColorEditApp());

class ColorEditApp extends StatelessWidget {
  const ColorEditApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        '/': (context) => const ColorScreen(),
        '/edit': (context) => const EditColorScreen(),
      },
    );
  }
}

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  final Color _color = const Color.fromARGB(255, 255, 0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/edit', arguments: _color);
              },
              child: const Text('Cambiar Color')),
        ),
      ),
    );
  }
}

class EditColorScreen extends StatefulWidget {
  const EditColorScreen({super.key});

  @override
  State<EditColorScreen> createState() => _EditColorScreenState();
}

class _EditColorScreenState extends State<EditColorScreen> {
  late List<TextEditingController> _controllers;

  @override
  void didChangeDependencies() {
    final Object? color = ModalRoute.of(context);
    final List<String> canales = [
      color.red.toString(),
      color.green.toString(),
      color.blue.toString(),
    ];
    _controllers = [
      for (int i = 0; i < 3; i++) TextEditingController(text: canales[i]),
    ];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    const List<String> colores = ['Red', 'Green', 'Blue'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Color'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              for (int i = 0; i < 3; i++)
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: _controllers[i],
                    decoration: InputDecoration(
                      labelText: colores[i],
                    ),
                  ),
                ))
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Guardar'),
          )
        ],
      ),
    );
  }
}
