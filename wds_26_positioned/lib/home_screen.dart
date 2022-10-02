import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 350,
          color: Colors.blue,
          child: Stack(
            children: [
              Positioned(
                  top: 5, left: 5, bottom: 5, right: 150, child: AmberBox()),
              Positioned(
                  top: 300, left: 30, bottom: 5, right: 5, child: IndigoBox()),
            ],
          ),
        ),
      ),
    );
  }
}

class AmberBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.amber,
    );
  }
}

class IndigoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.indigo,
    );
  }
}
