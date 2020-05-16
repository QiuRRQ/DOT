import 'package:flutter/material.dart';

class Loading {
  final BuildContext context;

  Loading(this.context);

  show() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (c) => Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(24.0))),
              padding: EdgeInsets.all(30.0),
              child: new CircularProgressIndicator())),
    );
  }
}