import 'package:flutter/material.dart';

class CustomerAddScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('Add a Customer'),
          )
        ],
      ),
    );
  }

}