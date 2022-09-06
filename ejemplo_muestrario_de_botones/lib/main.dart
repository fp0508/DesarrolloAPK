import 'package:flutter/material.dart';

void main() => runApp(const MuestrarioApp());

class MuestrarioApp extends StatelessWidget {
  const MuestrarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      title: 'Muestrario de Botones',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Muestrario de Botones'),
          centerTitle: true,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            children: [
              Muestra(
                text: 'ElevatedButton Clásico',
                child: ElevatedButton(
                    onPressed: () {
                      print('Apretao!');
                    },
                    child: const Text('Aprietame!')),
              ),
              Muestra(
                text: 'ElevatedButton con Color en texto y fondo',
                child: ElevatedButton(
                    onPressed: () {
                      print('Apretao!');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text(
                      'Aprietame!',
                      style: TextStyle(color: Colors.amberAccent),
                    )),
              ),
              const Muestra(
                text: 'ElevatedButton Desactivado',
                child:
                    ElevatedButton(onPressed: null, child: Text('Aprietame!')),
              ),
              Muestra(
                text: 'TextButton Clásico',
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Aprietame!'),
                ),
              ),
              Muestra(
                text: 'TextButton con Color en texto, fondo y sobre',
                child: TextButton(
                  style: const ButtonStyle(
                      overlayColor: MaterialStatePropertyAll(Colors.black26),
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      foregroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  child: const Text('Aprietame!'),
                ),
              ),
              Muestra(
                text: 'OutlinedButton Clásico',
                child: OutlinedButton(
                  onPressed: () {},
                  child: const Text('Aprietame!'),
                ),
              ),
              Muestra(
                text: 'OutlinedButton con StadiumBorder y colores',
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder()),
                  child: const Text('Aprietame!'),
                ),
              ),
              Muestra(
                text: 'OutlinedButton con Icon y StadiumBorder',
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Aprietame!'),
                  style: OutlinedButton.styleFrom(shape: const StadiumBorder()),
                ),
              ),
              Muestra(
                text: 'OutlinedButton con Icon, StadiumBorder y border outside',
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_circle),
                  label: const Text('Aprietame!'),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          color: Colors.red,
                          width: 4,
                          strokeAlign: StrokeAlign.outside),
                      shape: const StadiumBorder()),
                ),
              ),
              Muestra(
                text: 'OutlinedButton ButtonStyle overlay',
                child: OutlinedButton(
                  style: const ButtonStyle(
                    //surfaceTintColor: MaterialStatePropertyAll(Colors.red),
                    overlayColor: MaterialStatePropertyAll(Colors.black26),
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    //foregroundColor: MaterialStatePropertyAll(Colors.black),
                  ),
                  onPressed: () {},
                  child: const Text('Aprietame!'),
                ),
              ),
              Muestra(
                text: 'IconButton con tooltip',
                child: IconButton(
                  onPressed: () {},
                  tooltip: 'Esto es el panorama',
                  icon: const Icon(Icons.panorama),
                ),
              ),
              Muestra(
                text: 'FloatingActionButton Clásico',
                child: FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.query_builder),
                ),
              ),
              const Muestra(
                text: 'BackButton Clásico',
                child: BackButton(),
              ),
              const Muestra(
                text: 'CloseButton Clásico',
                child: CloseButton(),
              ),
              Muestra(
                text: 'ButtonBar Clásico',
                child: ButtonBar(
                  buttonPadding: const EdgeInsets.all(21),
                  alignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {},
                      child: const Icon(Icons.query_builder),
                    ),
                    IconButton(
                      onPressed: () {},
                      tooltip: 'Esto es el panorama',
                      icon: const Icon(Icons.panorama),
                    ),
                    const BackButton(),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}

class Muestra extends StatelessWidget {
  final Widget child;
  final String text;

  const Muestra({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            child,
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    ));
  }
}
