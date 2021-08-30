// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

MovieModel welcomeFromJson(String str) => MovieModel.fromJson(json.decode(str));

String welcomeToJson(MovieModel data) => json.encode(data.toJson());

class MovieModel {
    MovieModel({
       required  this.title,
       required  this.year,
       required  this.rated,
      required   this.released,
     required    this.runtime,
     required    this.genre,
       required  this.director,
      required   this.writer,
      required   this.actors,
      required   this.plot,
      required   this.language,
      required   this.country,
      required   this.awards,
      required   this.poster,
      required   this.ratings,
      required   this.metascore,
      required   this.imdbRating,
    required     this.imdbVotes,
     required    this.imdbId,
     required    this.type,
      required   this.dvd,
      required   this.boxOffice,
      required   this.production,
     required    this.website,
      required   this.response,
    });

    String title;
    String year;
    String rated;
    String released;
    String runtime;
    String genre;
    String director;
    String writer;
    String actors;
    String plot;
    String language;
    String country;
    String awards;
    String poster;
    List<Rating> ratings;
    String metascore;
    String imdbRating;
    String imdbVotes;
    String imdbId;
    String type;
    String dvd;
    String boxOffice;
    String production;
    String website;
    String response;

    factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        title: json["Title"],
        year: json["Year"],
        rated: json["Rated"],
        released: json["Released"],
        runtime: json["Runtime"],
        genre: json["Genre"],
        director: json["Director"],
        writer: json["Writer"],
        actors: json["Actors"],
        plot: json["Plot"],
        language: json["Language"],
        country: json["Country"],
        awards: json["Awards"],
        poster: json["Poster"],
        ratings: List<Rating>.from(json["Ratings"].map((x) => Rating.fromJson(x))),
        metascore: json["Metascore"],
        imdbRating: json["imdbRating"],
        imdbVotes: json["imdbVotes"],
        imdbId: json["imdbID"],
        type: json["Type"],
        dvd: json["DVD"],
        boxOffice: json["BoxOffice"],
        production: json["Production"],
        website: json["Website"],
        response: json["Response"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title,
        "Year": year,
        "Rated": rated,
        "Released": released,
        "Runtime": runtime,
        "Genre": genre,
        "Director": director,
        "Writer": writer,
        "Actors": actors,
        "Plot": plot,
        "Language": language,
        "Country": country,
        "Awards": awards,
        "Poster": poster,
        "Ratings": List<dynamic>.from(ratings.map((x) => x.toJson())),
        "Metascore": metascore,
        "imdbRating": imdbRating,
        "imdbVotes": imdbVotes,
        "imdbID": imdbId,
        "Type": type,
        "DVD": dvd,
        "BoxOffice": boxOffice,
        "Production": production,
        "Website": website,
        "Response": response,
    };
}

class Rating {
    Rating({
     required    this.source,
      required   this.value,
    });

    String source;
    String value;

    factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        source: json["Source"],
        value: json["Value"],
    );

    Map<String, dynamic> toJson() => {
        "Source": source,
        "Value": value,
    };
}
