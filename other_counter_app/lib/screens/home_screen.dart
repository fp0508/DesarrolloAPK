import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        title: const Text('Other Counter App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Counter App',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text('$counter',
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
/*        AnimatedFlipCounter(
          duration: const Duration(milliseconds: 500),
          value: counter,
          textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        )*/
      ])),
      floatingActionButton: _buttons(),
    );
  }

  Widget _buttons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add),
            backgroundColor: Colors.blueAccent,
            onPressed: () {
              setState(() => counter++);
            }),
        const SizedBox(height: 20),
        FloatingActionButton(
            child: const Icon(Icons.remove),
            backgroundColor: Colors.red,
            onPressed: () {
              if (counter > 0) counter--;
              setState(() {});
            }),
        const SizedBox(height: 50),
        FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() => counter = 0);
            }),
      ],
    );
  }
}
