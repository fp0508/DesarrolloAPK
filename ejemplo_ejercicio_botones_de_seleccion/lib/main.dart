import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
=======
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _estado = true;
  @override
>>>>>>> dd0239a41744684bc128bb8ecf9dd226bbf264c6
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
<<<<<<< HEAD
                onPressed: () => print('aaa'),
=======
                onPressed: () => _estado = true,
>>>>>>> dd0239a41744684bc128bb8ecf9dd226bbf264c6
                onLongPress: () => print('aaaa'),
                icon: const Icon(Icons.check_box_outline_blank),
                label: const Text('Elevated'),
                style: ElevatedButton.styleFrom(
<<<<<<< HEAD
                  backgroundColor: Colors.amber,
=======
                  backgroundColor: _estado ? Colors.amber : Colors.green,
>>>>>>> dd0239a41744684bc128bb8ecf9dd226bbf264c6
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
<<<<<<< HEAD
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red[50],
=======
                onHover: null,
                onFocusChange: null,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.amber[100],
                  foregroundColor: Colors.black,
>>>>>>> dd0239a41744684bc128bb8ecf9dd226bbf264c6
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
