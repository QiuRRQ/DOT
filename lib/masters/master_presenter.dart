import 'dart:convert';
import 'package:dot_test/models/gallery/gallery.dart';
import 'package:dot_test/models/gallery/gallery_response.dart';
import 'package:dot_test/models/places/places.dart';
import 'package:dot_test/models/places/places_response.dart';
import 'package:dot_test/utils/string.dart';
import 'package:http/http.dart' as http;

Future<List<Places>> reqPlace() async {
  List<Places> place = List();
  var response = await http.post(GET_PLACE_LIST)
      .catchError((err) => print("error ${err.toString()}"));
  print(response.body);
  if (response.statusCode == 200) {
    Map res = jsonDecode(response.body);
    if (res["status_code"] == 200) {
      print("warehouse ${PlacesResponse.fromJsonMap(res).data}");
      return PlacesResponse.fromJsonMap(res).data;
    }
  }
  return place;
}

Future<List<Gallery>> reqGallery() async {
  List<Gallery> gallery = List();
  var response = await http.post(GET_GALLERY_LIST)
      .catchError((err) => print("error ${err.toString()}"));
  print(response.body);
  if (response.statusCode == 200) {
    Map res = jsonDecode(response.body);
    if (res["status_code"] == 200) {
      print("warehouse ${GalleryResponse.fromJsonMap(res).data}");
      return GalleryResponse.fromJsonMap(res).data;
    }
  }
  return gallery;
}