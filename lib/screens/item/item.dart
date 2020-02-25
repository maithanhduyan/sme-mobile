import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class URLS {
  static const String BASE_URL = 'https://leansmesoft.com/api';
  static const String DEMO_URL = 'https://jsonplaceholder.typicode.com/posts';
}

class ItemScreen extends StatefulWidget {
  @override
  ItemScreenState createState() => new ItemScreenState();
}

class ItemScreenState extends State<ItemScreen> {
  List data;
  int index = 0;
  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull('http://leansmesoft.com/api/Items/GetAll'),
        headers: {"Accept": "application/json"});

    if (response.statusCode == 200) {
      this.setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load post');
    }

    index = data.length;
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    print('get data');
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Items'),
        ),
        SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: getWigets(),
            ))
      ],
    );
  }

  List<Widget> getWigets() {
    List<Widget> _list = <Widget>[];
    for (var i = 0; i < index; i++) {
      _list.add(
        Container(
          padding: const EdgeInsets.all(8),
          child: new Text('Name:'+data[i]['name'] +'Price:'+ data[i]['price'].toString()),
          color: Colors.green[100],
        ),
      );
    }
    return _list;
  }
}
