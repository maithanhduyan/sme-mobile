import 'package:flutter/material.dart';

abstract class AppStyle {
  static Color appColor = Colors.blue;

  static const TextStyle bottomNavOnSelectedStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const TextStyle bottomNavOnUnSelectedStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
}
