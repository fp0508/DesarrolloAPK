import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      title: 'Contador Bidireccional',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Contador Bidireccional'),
          ),
          body: Column(
            children: [
              Expanded(
                child: Center(
                  child: Container(
                    child: Text(
                      '$_counter',
                      style: const TextStyle(fontSize: 200),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape:
                              const StadiumBorder(side: BorderSide(width: .1)),
                          fixedSize: const Size(120, 80)),
                      onPressed: () {
                        setState(() {
                          if (_counter > 0) _counter--;
                        });
                      },
                      child: const Text(
                        '-1',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape:
                              const StadiumBorder(side: BorderSide(width: .1)),
                          fixedSize: const Size(120, 80)),
                      onPressed: () {
                        setState(() {
                          if (_counter < 20) _counter++;
                        });
                      },
                      child: const Text(
                        '+1',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
