import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hernan App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Hola! Soy Hernán',
            style: TextStyle(fontSize: 50),
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withAlpha(250), BlendMode.dstATop),
                  image: const AssetImage('/images/hernan2.jpg'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    const Text('Gracias!');
                  },
                  icon: Icon(Icons.adjust),
                  iconSize: 50,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  'Me gusta que me operen la nariz',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
