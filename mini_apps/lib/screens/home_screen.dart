import 'package:flutter/material.dart';
import 'package:mini_apps/Widgets/custom_card_with_image.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Section'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CustomCardWithImage(
                routeName: 'my_canine_age',
                cardText: 'Mi edad canina',
                heroTag: 'my_canine_age_image',
                image:
                    'https://s36700.pcdn.co/wp-content/uploads/2015/05/DavidZimmerman5.jpg.optimal.jpg',
              ),
              SizedBox(
                height: 10,
              ),
              CustomCardWithImage(
                routeName: 'contacts_app',
                cardText: 'Contacts App',
                heroTag: 'contacts_app',
                image:
                    'https://c0.wallpaperflare.com/preview/1013/721/141/contact-details-smartphone-business-contact-us.jpg',
                //isAsset: false,
              ),
            ],
          ),
        ));
  }
}
