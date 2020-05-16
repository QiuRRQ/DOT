import 'package:dot_test/screens/places_screen/detail_place_screen/detail_place_screen_view_model.dart';
import 'package:dot_test/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPlacesScreenView extends DetailPlacesScreenViewModel{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Place Detail", style: TITLE_STYLE,),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network(widget.place.image),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(widget.place.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Text(widget.place.description)
          ],
        ),
      ),
    );
  }

}