import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds16 ClipRRect ClipOval ClipPath',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: ClipRRect(
            //borderRadius: BorderRadius.circular(20),
            borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
            child: Image(
                image: NetworkImage('https://picsum.photos/id/103/800/600')),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: ClipOval(
            child: Image(
                image: NetworkImage('https://picsum.photos/id/103/800/600')),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          child: ClipPath(
            clipper: MyCustomClipper(),
            child: Image(
                image: NetworkImage('https://picsum.photos/id/103/800/600')),
          ),
        ),
      ],
    ));
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(size.width * .2, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width * .8, size.height * .5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
