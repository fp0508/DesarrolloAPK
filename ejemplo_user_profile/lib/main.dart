import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Profile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('User Profile'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Header(
              //height: 300,
              backgroundAsset: 'Trieste.jpg',
              userAsset: 'user.jpg',
              username: 'BautistaMangel',
            ),
            const Connections(
              followers: 3921,
              following: 128,
            ),
            Description(
              texto: 'Esta es una buena prueba de como hacer una app ' * 24,
            )
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  final String texto;

  const Description({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}

class Connections extends StatelessWidget {
  final int followers, following;
  const Connections({
    Key? key,
    required this.following,
    required this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: const Color.fromARGB(55, 0, 255, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Connection(text: 'following', number: following),
          Connection(text: 'followers', number: followers),
        ],
      ),
    );
  }
}

class Connection extends StatelessWidget {
  final String text;
  final int number;

  const Connection({
    Key? key,
    required this.text,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final style = const TextStyle(color: const Color.fromARGB(140, 0, 0, 0));

    return Column(
      children: [
        Text(text.toUpperCase(), style: style.copyWith(fontSize: 11)),
        Text('$number', style: style.copyWith(fontSize: 18)),
      ],
    );
  }
}

class Header extends StatelessWidget {
  final double height;
  final String backgroundAsset;
  final String userAsset;
  final String username;

  const Header({
    Key? key,
    this.height = 200,
    required this.backgroundAsset,
    required this.userAsset,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundAsset),
          //colorFilter: const ColorFilter.mode(Colors.amber, BlendMode.colorBurn),
          opacity: 80,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          UserPhoto(
            assetImage: userAsset,
            size: 110,
          ),
          Text(
            '@$username',
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class UserPhoto extends StatelessWidget {
  final String assetImage;
  final double size;

  const UserPhoto({
    Key? key,
    required this.assetImage,
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(assetImage), fit: BoxFit.fill),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 5,
        ),
      ),
      margin: const EdgeInsets.all(10),
    );
  }
}
