import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> favoriteContacts = [
    {
      'nameContact': 'Jorge Emilio',
      'phone': '+1 (961) 33825467',
      'typePhone': 'Móvil'
    },
    {
      'nameContact': 'Javier Mastol',
      'phone': '+1 (961) 33254767',
      'typePhone': 'Móvil'
    },
    {
      'nameContact': 'Tomas Valle',
      'phone': '+1 (961) 338432574',
      'typePhone': 'Casa'
    },
    {
      'nameContact': 'Bautista Lasalle',
      'phone': '+1 (961) 339254178',
      'typePhone': 'Móvil'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(
                child: Text(
                  'CA',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.deepPurpleAccent,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Phone: +1 (305) 5534267',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          backgroundColor: Colors.green,
        ),
        body: ListView(
          children: [
            Hero(
              tag: 'contacts_app_image',
              child: Image.network(
                  'https://c0.wallpaperflare.com/preview/1013/721/141/contact-details-smartphone-business-contact-us.jpg',
                  width: double.infinity,
                  height: 225,
                  fit: BoxFit.cover),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('FAVORITOS',
                      style: TextStyle(fontSize: 15, color: Colors.black54)),
                  MaterialButton(
                      child: Text(
                        'AÑADIR   ',
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                      onPressed: () {})
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: favoriteContacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(favoriteContacts[index]['nameContact']!);
                })
          ],
        ));
  }
}
