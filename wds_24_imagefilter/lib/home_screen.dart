import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
            child: Image.network(
                'https://miro.medium.com/max/3200/0*ZdwECz0chT1hOq6Y')),
        Positioned(
          top: 300,
          bottom: 300,
          left: 100,
          right: 100,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black26.withOpacity(.5),
              ),
            ),
          ),
        ),
        const Center(
          child: Icon(
            Icons.home_filled,
            size: 450,
          ),
        ),
      ]),
    );
  }
}
