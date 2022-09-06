import 'package:flutter/material.dart';
import 'movie.dart';

class MovieInfo extends StatelessWidget {
  final Movie movie = lordOfTheRings;

  MovieInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Movie'),
            backgroundColor: Colors.black,
          ),
          body: Container(
            color: Colors.black,
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MovieTop(movie),
                MovieMiddle(movie),
                MovieBottom(movie),
              ],
            ),
          )),
    );
  }
}

class MovieTop extends StatelessWidget {
  final Movie movie;
  const MovieTop(this.movie);

  @override
  Widget build(BuildContext context) {
    const textstyle =
        TextStyle(color: Color.fromARGB(100, 255, 255, 255), fontSize: 12);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                movie.title,
                style: const TextStyle(color: Colors.amber, fontSize: 25),
              ),
            ),
            Row(
              children: [
                Text('${movie.year}', style: textstyle),
                const SizedBox(width: 10),
                Text(movie.rating, style: textstyle),
                const SizedBox(width: 10),
                Text('${movie.minutes} mins.', style: textstyle),
                const SizedBox(width: 10),
                Expanded(
                    child: Text(
                  movie.tags.join(', '),
                  style: textstyle,
                  textAlign: TextAlign.right,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MovieMiddle extends StatelessWidget {
  final Movie movie;
  const MovieMiddle(this.movie);

  @override
  Widget build(BuildContext context) {
    const borderSide = BorderSide(
      width: 1,
      color: Color.fromARGB(20, 255, 255, 255),
    );
    return Container(
      height: 220,
      decoration: const BoxDecoration(
          border: Border(top: borderSide, bottom: borderSide)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(movie.posterAsset),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                movie.plot,
                style: const TextStyle(color: Colors.white70, fontSize: 12),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieBottom extends StatelessWidget {
  final Movie movie;
  MovieBottom(this.movie);

  TableRow _tableRow(String label, List<String> people, {String sep = ', '}) {
    final textStyle = const TextStyle(color: Colors.white, fontSize: 14, height: 1.4);
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child:
            Text(label, style: textStyle.copyWith(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(people.join(sep), style: textStyle),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Table(
            columnWidths: {
              0: const FlexColumnWidth(1),
              1: const FlexColumnWidth(3),
            },
            children: [
              _tableRow('Directors', movie.directors),
              _tableRow('Writers', movie.writers),
              _tableRow(
                'Actors',
                movie.actors,
                sep: '\n',
              ),
            ],
          )),
    );
  }
}

void main() => runApp(MovieInfo());
