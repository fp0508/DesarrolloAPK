import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.lightGreen,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de Clicks', style: fontSize30),
              Text('$counter', style: fontSize30),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.restart_alt_rounded),
            onPressed: () => setState(() => counter = 0),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.arrow_downward_outlined),
            onPressed: () => setState(() => counter--),
          ),
          FloatingActionButton(
            child: const Icon(Icons.arrow_upward_outlined),
            onPressed: () => setState(() => counter++),
          ),
        ],
      ),
    );
  }
}
