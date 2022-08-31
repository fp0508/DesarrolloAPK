import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Center(
        child: SizedBox(
          width: 350,
          height: 200,
          child: Text(
            'Hola Flutter ' * 32,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
                decoration: TextDecoration.none,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(5, 5),
                    blurRadius: 5,
                  ),
                  Shadow(
                    color: Colors.pink,
                    offset: Offset(0, 10),
                    blurRadius: 5,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
