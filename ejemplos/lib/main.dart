import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        backgroundColor: Colors.lime[50],
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add_box, size: 40),
              SizedBox(
                width: 10,
              ),
              Text(
                'Aplicación Mía',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Número 1',
                style: TextStyle(fontSize: 35),
              ),
              Container(
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.red, width: 5)),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Aplicación en Flutter 1\n' * 5,
                  style: const TextStyle(fontSize: 35),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.lime[200],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.lime, width: 5)),
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Aplicación en Flutter 2\n' * 5,
                  style: const TextStyle(fontSize: 35),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
