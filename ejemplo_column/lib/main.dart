import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle style = TextStyle(
        fontSize: 55, decoration: TextDecoration.none, color: Colors.black);

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Nuevo Flutter\n in Column',
                style: style,
                textAlign: TextAlign.center,
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.black45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      'prueba',
                      style: style,
                    ),
                    Text(
                      'de',
                      style: style,
                    ),
                    Text(
                      'row',
                      style: style.copyWith(
                        fontSize: 100,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Prueba de contenido',
                style: style,
              )
            ],
            //verticalDirection: VerticalDirection.up,
          ),
        ));
  }
}
