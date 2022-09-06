import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
                onPressed: () => print('aaa'),
                onLongPress: () => print('aaaa'),
                icon: const Icon(Icons.check_box_outline_blank),
                label: const Text('Elevated'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
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
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red[50],
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
