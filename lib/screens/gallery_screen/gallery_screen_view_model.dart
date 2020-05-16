import 'package:dot_test/masters/master_presenter.dart';
import 'package:dot_test/models/gallery/gallery.dart';
import 'package:dot_test/models/places/places.dart';
import 'package:dot_test/screens/gallery_screen/detail_gallery_screen/detail_gallery_screen.dart';
import 'package:dot_test/screens/gallery_screen/gallery_screen.dart';
import 'package:dot_test/screens/places_screen/detail_place_screen/detail_place_screen.dart';
import 'package:flutter/material.dart';

abstract class GalleryScreenViewModel extends State<GalleryScreen>{
  List<Gallery> galleryList = List();
  bool isReq = true;

  setDefault() {
    galleryList.clear();
  }

  @override
  void initState() {
    getGalleryList();
    super.initState();
  }

  getGalleryList() async {
    await reqGallery().then((listGallery){
      setState(() {
        this.galleryList = listGallery;
        this.isReq = false;
      });
    });
  }

  getGalleryDetails(Gallery myGallery) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (c) => DetailGalleryScreen(myGallery)));
  }

}