import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class BonusScreen extends StatefulWidget {
  @override
  State<BonusScreen> createState() => _BonusScreenState();
}

class _BonusScreenState extends State<BonusScreen> {
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
          child: AnimatedFlipCounter(
        duration: const Duration(milliseconds: 500),
        prefix: "Level: ",
        value: counter,
        textStyle: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
      )),
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
