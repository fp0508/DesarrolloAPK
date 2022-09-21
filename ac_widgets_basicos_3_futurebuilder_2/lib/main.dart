import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  Future<String> _cargaDatos() async {
    await Future.delayed(Duration(seconds: 2));
    return await rootBundle.loadString('datos.txt');
  }

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FutureBuilder Pau Fernandez',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FutureBuilder'),
        ),
        body: FutureBuilder(
          future: _cargaDatos(),
          //initialData: InitialData,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('Error! ${snapshot.error.toString()}'),
              );
            }

            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(child: Text('${snapshot.data}'));
          },
        ),
      ),
    );
  }
}
