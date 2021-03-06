import 'dart:convert';

class Movie {
  int id;
  String title;
  String overview;
  String posterImageUrl;
  Movie({
    this.id = 0,
    this.title = '',
    this.overview = '',
    this.posterImageUrl = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'overview': overview,
      'poster_path': posterImageUrl,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      id: map['id'],
      title: map['title'],
      overview: map['overview'],
      posterImageUrl: map['poster_path'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));
}
