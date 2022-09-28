import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:animate_do/animate_do.dart';

import 'models/reqres_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

Future<ReqResRespuesta> getUsuarios() async {
  final resp = await http.get(Uri.parse('https://reqres.in/api/users'));
  return reqResRespuestaFromJson(resp.body);
}

class MiPagina extends StatelessWidget {
  const MiPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wds 6 FutureBuilder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getUsuarios(),
        builder:
            (BuildContext context, AsyncSnapshot<ReqResRespuesta> snapshot) {
          //print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return _ListaUsuarios(snapshot.data!.data);
          }
        },
      ),
    );
  }
}

class _ListaUsuarios extends StatelessWidget {
  //const _ListaUsuarios({Key? key,}) : super(key: key);
  final List<Usuario> usuarios;

  const _ListaUsuarios(this.usuarios);

  @override
  Widget build(BuildContext context) {
    //print(usuarios);
    return ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (BuildContext context, int i) {
          final usuario = usuarios[i];
          return BounceInLeft(
            duration: const Duration(seconds: 1),
            delay: Duration(seconds: 1 * i),
            child: ListTile(
              title: Text('${usuario.firstName} ${usuario.lastName}'),
              subtitle: Text(usuario.email),
              trailing: Image.network(usuario.avatar),
            ),
          );
        });
  }
}
