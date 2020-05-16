
import 'package:dot_test/models/places/places.dart';
import 'package:dot_test/screens/places_screen/places_Screen_view_model.dart';
import 'package:dot_test/utils/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class PlacesScreenView extends PlacesScreenViewModel{

  _item(Places place){
    return InkWell(
      onTap: (){
        getPlaceDetails(place);
      },
      child: Container(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: <Widget>[
            Image.network(place.image),
            Container(
              child: Column(
                children: <Widget>[
                  Text(place.name, style: TITLE_STYLE),
                  Text(place.location, style: TITLE_STYLE)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  _loading() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
  _data() {
    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (c, i) => _item(place[i]),
      itemCount: place.length,
    );
  }

  _noData() {
    return Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('No Data')
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      child: Container(
        child: isReq && place.isEmpty ? _loading() : !isReq && place.isEmpty ? _noData() : _data(),
      ),
      onRefresh: (){
        _loading();
        setDefault();
        getPlacesList();
        print("iki melbu refresh");
        return isReq ? Future.value(null) :  null;
      },
    );
  }


}