import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:http_demo/model/Album.dart';

Future<Album> fetchAlbum() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  }
  else {
    throw Exception('Gagal load album');
  }
}