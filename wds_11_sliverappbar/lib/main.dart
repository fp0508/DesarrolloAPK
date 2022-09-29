import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds 11 SliverAppBar',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  final rnd = Random();
  final List<Color> colores = [
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Colors.teal,
    Colors.lime,
    Colors.purple,
    Colors.pink,
    Colors.amber,
    Colors.orange,
    Colors.blueGrey,
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
        100,
        (index) => Container(
              width: double.infinity,
              height: 150,
              color: colores[rnd.nextInt(colores.length)],
            ));
/*    return Scaffold(
      body: ListView.builder(
        //itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
      ),
    );
  }*/
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.indigoAccent,
            floating: true,
            expandedHeight: 200,
            flexibleSpace: Image.network(
              'https://photo-cdn2.icons8.com/uidzHPAYFq-vfB-iaZBcQ8uTVo0lPHO_dkWqTzA2jG8/rs:fit:1622:1072/czM6Ly9pY29uczgu/bW9vc2UtcHJvZC5l/eHRlcm5hbC9hMmE0/Mi9jYjNkYWE4ZGJl/YTk0ODg2YmEzOTVj/ODhmYWZlMmJkOS5q/cGc.jpg',
              fit: BoxFit.cover,
            ),
            pinned: true,
            title: const Text('wds 11 SliverAppBar'),
            centerTitle: true,
          ),
          SliverList(delegate: SliverChildListDelegate(items))
        ],
      ),
    );
  }
}
