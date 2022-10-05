import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  final colorStream = StreamController<Color>();
  int counter = -1;
  final List<Color> colorList = [
    Colors.green,
    Colors.pink,
    Colors.purple,
    Colors.orange
  ];

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamBuilder'),
        centerTitle: true,
      ),
      body: Center(
        child: Streams(colorStream: colorStream),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.color_lens),
          onPressed: () {
            counter++;
            if (counter < colorList.length) {
              colorStream.sink.add(colorList[counter]);
            } else {
              colorStream.close();
              //counter = 0;
            }
          }),
    );
  }
}

class Streams extends StatelessWidget {
  const Streams({
    Key? key,
    required this.colorStream,
  }) : super(key: key);

  final StreamController<Color> colorStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: colorStream.stream,
      //initialData: initialData,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) {
          return LoadingWidget();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return Text('Final del Stream :(');
        }
        return Container(
          height: 150,
          width: 150,
          color: snapshot.data,
        );
      },
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Esperando Clicks!'),
        SizedBox(
          height: 20,
        ),
        CircularProgressIndicator(),
      ],
    );
  }
}
