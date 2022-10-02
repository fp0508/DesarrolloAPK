import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: containerBorder(),
          child: Stack(children: const [
            Align(
                alignment: Alignment(-.5, -.5),
                child: CustomBox(
                  color: Colors.green,
                )),
            Align(
                alignment: Alignment(.5, .5),
                child: CustomBox(
                  color: Colors.indigo,
                )),
            Align(
                child: CustomBox(
              color: Colors.deepOrange,
            )),
          ]),
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
