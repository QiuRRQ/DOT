import 'package:dot_test/models/places/places.dart';
import 'package:dot_test/screens/places_screen/detail_place_screen/detail_place_screen_view.dart';
import 'package:flutter/material.dart';

class DetailPlacesScreen extends StatefulWidget{

  final Places place;
  DetailPlacesScreen(this.place);

  @override
  DetailPlacesScreenView createState() => new DetailPlacesScreenView();

}