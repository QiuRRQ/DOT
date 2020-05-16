import 'dart:async';
import 'package:dot_test/screens/home_screen/home_screen.dart';
import 'package:dot_test/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';


abstract class SplashViewModel extends State<SplashScreen> {
  String versionName = "";

  getVersion() async {
    var version = await PackageInfo.fromPlatform();
    versionName = version.version;
    setState(() {});
  }

  @override
  void initState() {
    gotoNextPage();
    super.initState();
  }

  gotoNextPage() async {
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (c) => HomeScreen())));
  }

}
