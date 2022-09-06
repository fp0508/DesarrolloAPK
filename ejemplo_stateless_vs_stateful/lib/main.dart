import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Body(),
        ),
      ),
    );

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SinEstado(),
          ConEstado(),
        ],
      ),
    );
  }
}

class SinEstado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(20),
      child: const Center(child: Text('Sin Estado')),
    );
  }
}

class ConEstado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Estado();
}

class Estado extends State<ConEstado> {
  bool _activo = false;

  @override
  void initState() {
    super.initState();
    _activo = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _activo = !_activo;
        });
      },
      child: Container(
        height: 200,
        color: (_activo ? Colors.cyan : Colors.lime),
        child: const Center(child: Text('Con Estado')),
      ),
    );
  }
}
