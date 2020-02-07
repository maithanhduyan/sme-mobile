import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('SME'),
            floating: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.group_add),
                onPressed: () =>  Navigator.pushNamed(context, '/customer'),
              )
            ],
          )
        ],
      ),

    );
  }
}
