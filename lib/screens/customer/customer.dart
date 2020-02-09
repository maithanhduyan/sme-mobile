import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('Customer'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Searching Customer',
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add New Customer',
        onPressed: () =>{},
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.pushNamed(context, '/customer_add'),
        ),
      ),
    );
  }
}
