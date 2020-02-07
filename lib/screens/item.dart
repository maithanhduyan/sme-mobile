import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('Items'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                //onPressed: ,
              )
            ],
          ),
        ],
      ),
    );
  }
}
