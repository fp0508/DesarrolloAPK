import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wds18 CustomPainter',
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
    return Scaffold(
      body: Center(
          child: Container(
        width: 260,
        height: 260,
        color: Colors.amber,
        child: CustomPaint(
          painter: MiPainterPersonalizado(),
        ),
      )),
    );
  }
}

class MiPainterPersonalizado extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff21232A)
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = Path();

/*    path.lineTo(size.width * .5, 0);
    path.lineTo(size.width * .5, size.height * .5);
    path.lineTo(0, size.height * .5);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .5);
    path.lineTo(size.width * .5, size.height * .5);*/

    path.moveTo(size.width * .3333, 0);
    path.lineTo(size.width * .3333, size.height);
    path.moveTo(size.width * .6666, 0);
    path.lineTo(size.width * .6666, size.height);
    path.moveTo(0, size.height * .6666);
    path.lineTo(size.width, size.height * .6666);
    path.moveTo(0, size.height * .3333);
    path.lineTo(size.width, size.height * .3333);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MiPainterPersonalizado oldDelegate) => true;
}
