import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail del Hero'),
          centerTitle: true,
        ),
        body: Column(
          children: const [
            Hero(
              tag: 'logo',
              child: FlutterLogo(
                size: 450,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                'Lorem ipsum bla bla cosas para ocupar el campo de texto',
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ));
  }
}
