import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Center(
            child: Container(
          width: 320,
          height: 700,
          color: Colors.amber,
          child: Column(
            children: [
              Image.asset(
                'beach.jpg',
                //fit: BoxFit.cover,
                scale: 8,
                alignment: Alignment.center,
                //repeat: ImageRepeat.repeat,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.network(
                'https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Moro_Blood_Orange_4_650x.jpg',
                //fit: BoxFit.cover,
                scale: 3,
                //alignment: Alignment.center,
                //repeat: ImageRepeat.repeat,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.cruelty_free,
                    size: 80,
                    color: Colors.pink,
                  ),
                  Icon(
                    Icons.cruelty_free,
                    size: 80,
                    color: Colors.red,
                  ),
                  Icon(
                    Icons.cruelty_free,
                    size: 80,
                    color: Colors.purple,
                  ),
                  Icon(
                    Icons.cruelty_free,
                    size: 80,
                    color: Colors.cyan,
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
