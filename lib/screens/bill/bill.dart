import 'package:flutter/material.dart';

class BillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Bill'),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver:SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Text('s'),
              Text('s'),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('He\'d have you all unravel at the'),
                color: Colors.green[100],
              ),
            ],
          )
        ),
      ],
    );
  }
}
