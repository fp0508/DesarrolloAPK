class Movie {
  String title, rating, plot, posterAsset;
  int year, minutes;
  List<String> tags, directors, writers, actors;

  Movie({
    required this.title,
    required this.rating,
    required this.plot,
    required this.posterAsset,
    required this.year,
    required this.minutes,
    required this.tags,
    required this.directors,
    required this.writers,
    required this.actors,
  });
}

final lordOfTheRings = Movie(
    title: 'El señor de los anillos: La comunidad del anillo (2001)',
    rating: 'PG13',
    plot:
        'En la Tierra Media, el Señor Oscuro Saurón creó los Grandes Anillos de Poder, forjados por los herreros Elfos. Tres para los reyes Elfos, siete para los Señores Enanos, y nueve para los Hombres Mortales. Secretamente, Saurón también forjó un anillo maestro, el Anillo Único, que contiene en sí el poder para esclavizar a toda la Tierra Media. Con la ayuda de un grupo de amigos y de valientes aliados, Frodo emprende un peligroso viaje con la misión de destruir el Anillo Único. Pero el Señor Oscuro Sauron, quien creara el Anillo, envía a sus servidores para perseguir al grupo. Si Sauron lograra recuperar el Anillo, sería el final de la Tierra Media.',
    posterAsset: 'lotr.jpg',
    year: 2001,
    minutes: 178,
    tags: [
      'Adventure',
      'Fantasy',
      'Action'
    ],
    directors: [
      'Peter Jackson'
    ],
    writers: [
      'J.R.R. Tolkien (Novel)',
      'Fran Walsh (Screenplay)',
      'Philippa Boyens (Screenplay)',
      'Peter Jackson (Screenplay)',
    ],
    actors: [
      'Elijah Wood',
      'Ian McKellen',
      'Viggo Mortensen',
      'Sean Astin',
      'Billy Boyd',
    ]);
