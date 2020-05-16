import 'package:dot_test/screens/splash_screen/splash_screen_view_model.dart';
import 'package:dot_test/utils/string.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends SplashViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      body: Container(
        color: Colors.teal,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Center(
                child: Text(
                  APP_NAME,
                  style: TITLE_STYLE,
                )
            ),
            Text(
              APP_VERSION_NAME,
              style: TITLE_STYLE,
            ),
          ],
        ),
      ),
    );
  }
}
