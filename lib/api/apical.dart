import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieui/models/Moviemodel.dart';

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
          Uri.parse('http://www.omdbapi.com/?i=tt4975722&apikey=9aa12733'));
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

  Future<MovieModel> getsingleMovie(id) async {
    var client = http.Client();
    var moviesingleModel;

    try {
      var response = await client.get(
          Uri.parse('http://www.omdbapi.com/?i=$id&apikey=9aa12733'));
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
