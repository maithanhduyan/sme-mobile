
import 'package:flutter/material.dart';

class InventoryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('Inventory'),
          )
        ],
      ),
    );
  }

}