import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('home'),
            floating: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () =>  SimpleDialog(
                  title: Text('Hello Dialog'),
                  children: <Widget>[
                    Text('Content')
                  ],
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}
