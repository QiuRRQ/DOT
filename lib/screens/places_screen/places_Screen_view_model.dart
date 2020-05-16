import 'package:dot_test/masters/master_presenter.dart';
import 'package:dot_test/models/places/places.dart';
import 'package:dot_test/screens/places_screen/detail_place_screen/detail_place_screen.dart';
import 'package:dot_test/screens/places_screen/places_screen.dart';
import 'package:dot_test/utils/my_dialog.dart';
import 'package:flutter/material.dart';

abstract class PlacesScreenViewModel extends State<PlacesScreen>{
  List<Places> place = List();
  bool isReq = true;

  setDefault() {
    place.clear();
  }

  @override
  void initState() {
    getPlacesList();
    super.initState();
  }

  getPlacesList() async {
    await reqPlace().then((listPlace){
      setState(() {
        this.place = listPlace;
        this.isReq = false;
      });
    });
  }

  getPlaceDetails(Places Place) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (c) => DetailPlacesScreen(Place)));
  }

}