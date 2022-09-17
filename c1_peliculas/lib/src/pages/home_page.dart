import 'package:flutter/material.dart';

import 'package:c1_peliculas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Películas en Cine'),
          backgroundColor: Colors.indigoAccent,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Container(
          child: Column(
            children: [
              _swiperTarjetas(),
            ],
          ),
        ));
  }
}

_swiperTarjetas() {
  return CardSwiper(peliculas: [1, 2, 3, 4, 5]);
}
