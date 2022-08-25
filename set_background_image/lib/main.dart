import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Set Background Image',
      home: BackgroundImageExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BackgroundImageExample extends StatelessWidget {
  static const String imageUrl =
      'https://images.unsplash.com/photo-1547721064-da6cfb341d50';

  const BackgroundImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Background Image'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(Colors.red.withAlpha(120), BlendMode.dstATop),
            image: const NetworkImage(imageUrl),
          ),
        ),
        child: Text('Girafa',
            style: TextStyle(
                backgroundColor: Colors.black.withAlpha(30),
                fontSize: 40,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
