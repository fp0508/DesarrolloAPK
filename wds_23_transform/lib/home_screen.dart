import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationCTRL;
  late Animation<double> scaleAnimation;
  late Animation<double> translateAnimation;

  @override
  void initState() {
    animationCTRL =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    scaleAnimation = Tween<double>(begin: .5, end: 1.5).animate(animationCTRL);
    translateAnimation = Tween<double>(begin: 0, end: 50).animate(
        CurvedAnimation(parent: animationCTRL, curve: Curves.bounceOut));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
              animation: animationCTRL,
              //child: child,
              builder: (BuildContext context, _) => Transform.translate(
                    offset: Offset(-80, translateAnimation.value),
                    child: Transform.scale(
                        scale: scaleAnimation.value,
                        child: Transform(
                            transform:
                                Matrix4.skew(scaleAnimation.value - .5, 0),
                            child: Rectangulo())),
                  )),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                  child: const Icon(Icons.play_arrow_outlined),
                  onPressed: () {
                    animationCTRL.forward();
                  }),
              FloatingActionButton(
                  child: const Icon(Icons.restart_alt),
                  onPressed: () {
                    animationCTRL.reset();
                  })
            ],
          ),
        ],
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      color: Colors.amber,
      child: const Icon(Icons.menu, size: 50),
    );
  }
}
