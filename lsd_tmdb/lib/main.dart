import 'package:flutter/material.dart';
import 'package:lsd_tmdb/ui/cajapelicula.dart';
import 'package:lsd_tmdb/ui/spinnerwidget.dart';

import 'api/themoviedbservice.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieDBPage(),
    );
  }
}

class MovieDBPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pelis más valoradas')),
        body: FutureBuilder(
          //podría poner
          //initialData: [],
          future: TheMovieDBService.getTopRatedMovies(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var pelicula = snapshot.data![index];
                  return CajaPelicula(peli: pelicula);
                },
              );
            } else {
              return SpinnerWidget();
            }
          },
        ));
  }
}
