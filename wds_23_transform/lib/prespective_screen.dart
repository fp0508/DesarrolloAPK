import 'package:flutter/material.dart';

class PrespectiveScreen extends StatefulWidget {
  @override
  State<PrespectiveScreen> createState() => _PrespectiveScreenState();
}

class _PrespectiveScreenState extends State<PrespectiveScreen> {
  Offset _offset = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Transform(
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateX(_offset.dy * .01)
          ..rotateY(_offset.dx * .01),
        alignment: FractionalOffset.center,
        child: GestureDetector(
            onPanUpdate: (details) => setState(() {
                  _offset += details.delta;
                }),
            onDoubleTap: () => setState(() {
                  _offset = Offset.zero;
                }),
            child: const ScreenBody()));
  }
}

class ScreenBody extends StatelessWidget {
  const ScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
