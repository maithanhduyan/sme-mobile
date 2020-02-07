import 'package:flutter/material.dart';

class CustomerAddScreen extends StatelessWidget{

  static const String routeName = '/customer_add';

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