import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.keyboard_arrow_left_rounded),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        children: [
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo1(),
          const SizedBox(
            height: 30,
          ),
          _cardTipo2(),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          title: const Text('Soy el título de esta tarjeta'),
          subtitle: const Text(
              'Aqui estamos con la descripción de esta tarjeta a ver de que se trata'),
          onTap: () => null,
          hoverColor: Colors.blue[100],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            OutlinedButton(onPressed: () {}, child: const Text('Cancelar')),
            OutlinedButton(onPressed: () {}, child: const Text('OK')),
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  return Card(
    elevation: 10,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    color: Colors.redAccent,
    child: Column(
      children: [
        const FadeInImage(
          placeholder: AssetImage('jar-loading.gif'),
          fadeInDuration: Duration(seconds: 1),
          height: 600,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Moro_Blood_Orange_4_650x.jpg',
              scale: .1),
        ),
/*        Image(
          image: NetworkImage(
              'https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Moro_Blood_Orange_4_650x.jpg',
              scale: 1),
        ),*/
        Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Esta imagen de una naranja de fuego me gusta',
              style: TextStyle(color: Colors.white),
            ))
      ],
    ),
  );
}
