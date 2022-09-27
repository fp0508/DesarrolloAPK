import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(2),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://www3.minijuegosgratis.com/v3/games/thumbnails/240530_7_sq.jpg',
              ),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('jar-loading.gif'),
          image: NetworkImage(
            'https://www3.minijuegosgratis.com/v3/games/thumbnails/240530_7_sq.jpg',
          ),
          fadeInDuration: Duration(seconds: 1),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_arrow_left_rounded),
      ),
    );
  }
}
