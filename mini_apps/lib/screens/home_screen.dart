import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Section'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'my_canine_age');
                },
                child: Container(
                  width: double.infinity,
                  height: 275,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    margin: EdgeInsets.zero,
                    child: Column(
                      children: [
                        Hero(
                          tag: 'my_canine_age_image',
                          child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.asset(
                                  'assets/images/ComputerDog.jpg',
                                  width: double.infinity,
                                  height: 225,
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Mi edad Canina', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
