import 'package:dot_test/masters/master_presenter.dart';
import 'package:dot_test/models/gallery/gallery.dart';
import 'package:dot_test/models/places/places.dart';
import 'package:dot_test/screens/about_screen/about_screen.dart';
import 'package:dot_test/screens/gallery_screen/gallery_screen.dart';
import 'package:dot_test/screens/places_screen/places_screen.dart';
import 'package:dot_test/utils/my_dialog.dart';
import 'package:dot_test/screens/home_screen/home_screen.dart';
import 'package:dot_test/utils/string.dart';
import 'package:flutter/cupertino.dart';

abstract class HomeScreenViewModel extends State<HomeScreen>{
  List<Places> place = List();
  List<Gallery> gallery = List();

  List<Widget> appBar = <Widget>[
    Text(
      'List Place',
      style: TITLE_STYLE,
    ),
    Text(
      'List Gallery',
      style: TITLE_STYLE,
    ),
    Text(
      'About',
      style: TITLE_STYLE,
    )
  ];

  int selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<Widget> widgetOptions = <Widget>[
    PlacesScreen(),
    GalleryScreen(),
    AboutScreen()
  ];

  void onItemTapped(int index) {

    setState(() {
      selectedIndex = index;
    });
  }

}