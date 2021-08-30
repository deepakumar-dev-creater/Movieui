import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieui/models/Moviemodel.dart';
import 'package:movieui/models/NewsModel.dart';

class GetName {
  final String id;
  GetName(
    this.id,
  );
  Future<MovieModel> getMovie() async {
    var client = http.Client();
    var movieModel;

    try {
      var response = await client.get(
          Uri.parse('http://www.omdbapi.com/?s=batman&page=1&apikey=9aa12733'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        movieModel = MovieModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return movieModel;
    }

    return movieModel;
  }

// f2a8179a58864b41a6ecce3ebba13f66
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newValue;

    var response = await client.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f2a8179a58864b41a6ecce3ebba13f66'));
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      newValue = NewsModel.fromJson(jsonMap);
    }

    return newValue;
  }

  Future<MovieModel> getsingleMovie(id) async {
    var client = http.Client();
    var moviesingleModel;
    try {
      var response = await client
          .get(Uri.parse('http://www.omdbapi.com/?i=$id&apikey=9aa12733'));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        moviesingleModel = MovieModel.fromJson(jsonMap);
      }
    } catch (Exception) {
      return moviesingleModel;
    }

    return moviesingleModel;
  }
}
