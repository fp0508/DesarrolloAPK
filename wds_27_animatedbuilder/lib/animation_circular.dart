import 'dart:math';

import 'package:flutter/material.dart';

class AnimationCircular extends StatefulWidget {
  @override
  State<AnimationCircular> createState() => _AnimationCircularState();
}

class _AnimationCircularState extends State<AnimationCircular>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation rotation;
  late final Animation sizing;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    rotation = Tween<double>(begin: 0, end: 2 * pi)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    sizing = Tween<double>(begin: .05, end: 3)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: Square(),
          builder: (BuildContext context, Widget? child) {
            return Transform.scale(
              alignment: Alignment.bottomCenter,
              scale: sizing.value,
              child: Transform.rotate(
                angle: rotation.value,
                child: child,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow_outlined),
          onPressed: () {
            controller.reset();
            controller.forward();
            //.whenCompleteOrCancel(() {
            //  controller.reset();
            //});
          }),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Aprovecha esta oferta, solo por HOY!!!',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.blue]),
        // color: Colors.red,
      ),
    );
  }
}
