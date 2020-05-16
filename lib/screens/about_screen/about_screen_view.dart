import 'package:dot_test/screens/about_screen/about_screen_view_model.dart';
import 'package:dot_test/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutScreenView extends AboutScreenViewModel{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Informasi",),
              Tab(text: "Versi Rilis",)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(APP_NAME)
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(APP_VERSION_NAME)
                  ],
                ),
              ),
            )
          ],

        ),
      ),
    );
  }

}

