import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items'),
      ),
      body: Center(
        child: Text('Items'),
      ),
    );
  }

}