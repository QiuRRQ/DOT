
import 'package:dot_test/screens/home_screen/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreenView extends HomeScreenViewModel{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: appBar.elementAt(selectedIndex),
      ),
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            title: Text('Gallery')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.error),
            title: Text('About')
          )
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        onTap: onItemTapped,
      ),
    );
  }

}