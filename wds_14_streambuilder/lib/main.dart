import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wds14 StreamBuilder',
      debugShowCheckedModeBanner: false,
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
  final List<Color> colorList = [Colors.amber, Colors.indigo, Colors.brown];

  @override
  void dispose() {
    colorStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: colorStream.stream,
          //initialData: initialData,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const LoadingWidget();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return const Text('Fin del Stream :(');
            }
            return Container(
              width: 150,
              height: 150,
              color: snapshot.data,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.color_lens_rounded),
          onPressed: () {
            counter++;
            if (counter < colorList.length) {
              colorStream.sink.add(colorList[counter]);
            } else {
              colorStream.close();
            }
          }),
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
      children: const [
        Text('Esperando Clicks'),
        SizedBox(height: 20),
        CircularProgressIndicator()
      ],
    );
  }
}
