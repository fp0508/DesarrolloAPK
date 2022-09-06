import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _estado = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Botones de Selección',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botones de Selección'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              ElevatedButton.icon(
                onPressed: () => _estado = true,
                onLongPress: () => print('aaaa'),
                icon: const Icon(Icons.check_box_outline_blank),
                label: const Text('Elevated'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _estado ? Colors.amber : Colors.green,
                  foregroundColor: Colors.black,
                  shape: const StadiumBorder(
                      side: BorderSide(
                          width: 5,
                          color: Colors.black,
                          strokeAlign: StrokeAlign.outside)),
                  //fixedSize: Size(100, 30),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check_box),
                label: const Text('Text'),
                onHover: null,
                onFocusChange: null,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber[100],
                  foregroundColor: Colors.black,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.check_circle),
                label: const Text('Outlined'),
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
