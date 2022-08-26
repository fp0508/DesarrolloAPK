import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCanineAgeScreen extends StatefulWidget {
  @override
  State<MyCanineAgeScreen> createState() => _MyCanineAgeScreenState();
}

class _MyCanineAgeScreenState extends State<MyCanineAgeScreen> {
//  const MyCanineAgeScreen({super.key});
  bool _showCanineAge = false;
  int dogAge = 0;
  final TextEditingController ageInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Canine Age'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Column(children: [
        Hero(
          tag: 'my_canine_age_image',
          child: Image.asset('assets/images/ComputerDog.jpg',
              width: double.infinity, height: 225, fit: BoxFit.cover),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            child: Column(
              children: [
                Theme(
                  data: ThemeData(
                      colorScheme: ThemeData()
                          .colorScheme
                          .copyWith(primary: Colors.brown)),
                  child: TextField(
                    controller: ageInputController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Ingrese su edad: ',
                        helperText: 'Solo Números',
                        icon: Icon(Icons.person),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.clear),
                            splashRadius: 25,
                            onPressed: () {
                              ageInputController.clear();
                              setState(() {});
                            })),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                if (_showCanineAge) _showCanineAgeContent(),
                MaterialButton(
                    shape: StadiumBorder(),
                    minWidth: double.infinity,
                    color: Colors.brown,
                    child: Text('Calcular mi edad canina',
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      final canineAge = ageInputController.text;
                      if (canineAge.isNotEmpty) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        _showCanineAge = true;
                        dogAge = int.parse(canineAge) * 7;
                        setState(() {});
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.redAccent,
                            content: Text('Error, por favor ingrese su edad')));
                      }
                    })
              ],
            ))
      ]),
    );
  }

  Widget _showCanineAgeContent() {
    return Text(
      'Tu edad canina es: $dogAge años',
      style: TextStyle(fontSize: 20),
    );
  }
}
