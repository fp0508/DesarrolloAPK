import 'package:flutter/material.dart';

void main() {
  runApp(const BackgroundImageDemo());
}

class BackgroundImageDemo extends StatelessWidget {
  const BackgroundImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hola, soy Hernan',
                style: TextStyle(fontSize: 40),
              ),
              centerTitle: true,
            ),
            body: Scaffold(
              body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.white.withAlpha(250), BlendMode.dstATop),
                          image:
                              const AssetImage('assets/images/hernan2.jpg'))),
                  child: const Center(
                      child: Text(
                    "Me gusta que me operen la nariz",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontSize: 80),
                  ))),
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.black,
                selectedItemColor: Colors.cyanAccent,
                unselectedItemColor: Colors.redAccent.withOpacity(0.3),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.verified_user_outlined), label: 'User'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Settings'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_box_outlined), label: 'Cart'),
                ],
              ),
            )));
  }
}
