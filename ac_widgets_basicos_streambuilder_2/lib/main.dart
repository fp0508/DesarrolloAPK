import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

Stream<int> countdown(int from, int to) async* {
  await Future.delayed(const Duration(seconds: 2));
  yield from;
  for (int i = from; i >= to; i--) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StreamBuilder Pau Fernandez',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('StreamBuilder'),
            centerTitle: true,
          ),
          body: StreamBuilder(
              stream: countdown(10, -1),
              builder: (context, AsyncSnapshot<int> snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error.toString()}'),
                  );
                }
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return const Center(
                        child: Text(
                      'None',
                      style: TextStyle(
                          fontSize: 90, color: Colors.deepPurpleAccent),
                    ));
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());
                  case ConnectionState.active:
                    return Center(
                        child: Text(
                      '${snapshot.data}',
                      style: const TextStyle(
                          fontSize: 90, color: Colors.deepPurpleAccent),
                    ));
                  case ConnectionState.done:
                    return const Center(
                        child: Text(
                      'Listo',
                      style: TextStyle(
                          fontSize: 90, color: Colors.deepOrangeAccent),
                    ));
                }
              })),
    );
  }
}
