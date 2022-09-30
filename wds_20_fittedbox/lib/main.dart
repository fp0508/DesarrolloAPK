import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds20 FittedBox',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  const MiPagina({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wds20 FittedBox'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 800,
              height: 400,
              color: Colors.amber,
              child: const FittedBox(
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomRight,
                child: Image(
                    image: NetworkImage(
                        'https://cdn.sci.news/images/2012/05/image_312.jpg')),
              ),
            ),
            const Divider(
              height: 20,
            ),
            //Image(image: NetworkImage('https://cdn.sci.news/images/2012/05/image_312.jpg'))
          ],
        ),
      ),
    );
  }
}
