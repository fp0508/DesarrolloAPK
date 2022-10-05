import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation movingTop;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    movingTop = Tween<double>(begin: -100, end: 300)
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
            return Transform.translate(
              offset: Offset(0, movingTop.value),
              child: child,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow_outlined),
          onPressed: () {
            //controller.reset();
            controller.forward().whenCompleteOrCancel(() {
              controller.reset();
            });
          }),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}
