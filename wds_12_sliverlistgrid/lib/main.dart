import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds12 SliverList and SliverGrid',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  const MiPagina({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(50, (i) => Rectangulo(i));
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            title: Text('SliverGrid.extent'),
            backgroundColor: Colors.indigoAccent,
            centerTitle: true,
            pinned: true,
            //floating: true,
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 50,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: items,
          ),
          const SliverAppBar(
            title: Text('SliverGrid.count'),
            backgroundColor: Colors.indigoAccent,
            centerTitle: true,
            pinned: true,
            //floating: true,
          ),
          SliverGrid.count(
            //childAspectRatio: 1.5,
            crossAxisCount: 5,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10,
            children: items,
          ),
          const SliverAppBar(
            title: Text('SliverList'),
            backgroundColor: Colors.deepOrangeAccent,
            centerTitle: true,
            pinned: true,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, i) {
              return Rectangulo(i);
            },
            childCount: 50,
          ))
        ],
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final int index;
  const Rectangulo(this.index);

  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);
    final o = rnd.nextDouble();
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(color: Color.fromRGBO(r, g, b, o)),
      child: Center(
        child: Text(
          '$index',
          style: TextStyle(color: Color.fromRGBO(255 - r, 255 - g, 255 - b, 1)),
        ),
      ),
    );
  }
}
