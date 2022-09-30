import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds13 FadeInImage',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wds13 FadeInImage'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
              fadeInDuration: const Duration(seconds: 2),
              fadeInCurve: Curves.easeIn,
              placeholder: const AssetImage('assets/loading-smile.gif'),
              //image: NetworkImage('https://picsum.photos/800/600?random=0')
              image: NetworkImage('https://picsum.photos/id/$index/800/600'));
        },
      ),
    );
  }
}
