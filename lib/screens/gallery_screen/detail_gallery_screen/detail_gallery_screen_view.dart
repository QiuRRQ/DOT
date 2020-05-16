import 'package:dot_test/screens/gallery_screen/detail_gallery_screen/detail_gallery_screen_view_model.dart';
import 'package:dot_test/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailGalleryScreenView extends DetailGalleryScreenViewModel{
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
            Image.network(widget.gallery.image),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(widget.gallery.caption, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }

}