import 'package:dot_test/screens/gallery_screen/gallery_screen_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class GalleryScreenView extends GalleryScreenViewModel{
  _data() {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(4.0),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      children: List.generate(galleryList.length, (index){
        return GridTile(
          child: GestureDetector(
            onTap: (){
              getGalleryDetails(galleryList[index]);
            },
            child: Image.network(galleryList[index].thumbnail, fit: BoxFit.cover,),
          ),
        );
      }),
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

  _loading() {
    return Container(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RefreshIndicator(
      child: Container(
        child: isReq && galleryList.isEmpty ? _loading() : !isReq && galleryList.isEmpty ? _noData() : _data(),
      ),
      onRefresh: (){
        _loading();
        setDefault();
        getGalleryList();
        print("iki melbu refresh");
        return isReq ? Future.value(null) :  null;
      },
    );
  }

}