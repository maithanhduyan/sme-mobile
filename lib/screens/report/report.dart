import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            centerTitle: true,
            title: Text('Report'),
          )
        ],
      ),
    );
  }

}