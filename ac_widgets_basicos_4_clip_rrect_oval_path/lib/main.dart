import 'package:flutter/material.dart';

//flutter run -d chrome --web-renderer html
//Para que se puedan ver sin problema las imagenes

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ClipRRect ClipOval ClipPath Fernando Herrera',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ClipRRect ClipOval ClipPath'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 250,
                  width: 400,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ClipOval(
                //borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 250,
                  width: 400,
                  color: Colors.orange,
                  child: Image.network(
                      'https://cdn.bmwblog.com/wp-content/uploads/2018/03/2018-BMW-M4-Fire-Orange-New-York-Auto-Show-6.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ClipPath(
                //borderRadius: BorderRadius.circular(30),
                clipper: MyCustomClipper(),
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 250,
                  width: 400,
                  color: Colors.cyan,
                  child: Image.network(
                      'https://como-programar.net/wp-content/uploads/2021/03/flutter.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height * .5)
      ..lineTo(size.width, size.height * .5);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
