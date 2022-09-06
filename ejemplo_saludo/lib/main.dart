import 'package:flutter/material.dart';

void main() => runApp(const SaludoApp());

class SaludoApp extends StatelessWidget {
  const SaludoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'Material App',
      home: const SaludoScreen(),
    );
  }
}

class SaludoScreen extends StatefulWidget {
  const SaludoScreen({super.key});

  @override
  State<SaludoScreen> createState() => _SaludoScreenState();
}

class _SaludoScreenState extends State<SaludoScreen> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saludo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Nombre',
                suffix: GestureDetector(
                  child: const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    _controller.clear();
                  },
                ),
              ),
              onSubmitted: (String nombre) {
                nombre.isNotEmpty ? _saluda(context, nombre) : null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  _controller.text.isNotEmpty
                      ? _saluda(context, _controller.text)
                      : null;
                  // _saluda(context, _controller.text);
                },
                child: const Text('Saluda'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> _saluda(BuildContext context, String nombre) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Saludos'),
              content: Text('Hola $nombre, cómo estas?'),
            ));
  }
}
