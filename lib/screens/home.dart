import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 50,
          floating: true,
          pinned: false,
          snap: true,
          centerTitle: true,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('SME'),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_circle),
              tooltip: 'Add new entry',
              onPressed: () {
                // Find the Scaffold in the widget tree and use it to show a SnackBar.
                Scaffold.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ],
    );
  }
}
