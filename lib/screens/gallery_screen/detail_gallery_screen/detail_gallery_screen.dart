import 'package:dot_test/models/gallery/gallery.dart';
import 'package:dot_test/screens/gallery_screen/detail_gallery_screen/detail_gallery_screen_view.dart';
import 'package:flutter/material.dart';

class DetailGalleryScreen extends StatefulWidget{

  final Gallery gallery;
  DetailGalleryScreen(this.gallery);

  @override
  DetailGalleryScreenView createState() => new DetailGalleryScreenView();

}