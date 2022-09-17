import 'package:flutter/material.dart';

import 'package:flutter_swipe/flutter_swipe.dart';

class CardSwiper extends StatelessWidget {
  //const CardSwiper({super.key});

  final List peliculas;

  CardSwiper({required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10),
      //width: _screenSize.width * .7,
      height: _screenSize.height * .5,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * .7,
        itemHeight: _screenSize.height * .5,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://image.tmdb.org/t/p/w500/miZFgV81xG324rpUknQX8dtXuBl.jpg",
                fit: BoxFit.cover,
              ));
        },
        itemCount: 3,
        //pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
