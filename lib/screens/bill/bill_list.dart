import 'package:flutter/material.dart';

class BillListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('Bill List'),
          )
        ],
      ),
    );
  }
}
