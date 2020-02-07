import 'package:flutter/material.dart';

class DrawerWidget extends Widget{
  @override
  Element createElement() {
    return null;
  }

  Widget _createDrawerItem(IconData icon, String text, GestureTapCallback onTap){
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}