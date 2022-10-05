import 'package:flutter/material.dart';

class AlignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Container(
          width: 300,
          height: 300,
          decoration: containerBorder(),
          child:
              const Align(alignment: Alignment.topCenter, child: CustomBox()),
        ),
      ),
    );
  }

  BoxDecoration containerBorder() =>
      BoxDecoration(border: Border.all(color: Colors.cyan, width: 2));
}

class CustomBox extends StatelessWidget {
  final Color color;

  const CustomBox({super.key, this.color = Colors.blueAccent});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
}
