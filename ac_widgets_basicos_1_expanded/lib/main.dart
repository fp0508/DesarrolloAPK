import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    //width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    //width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    //width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                //width: 250,
                //height: 50,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
