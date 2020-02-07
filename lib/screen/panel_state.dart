import 'package:flutter/material.dart';
import 'package:sme_mobile/screen/bill.dart';
import 'package:sme_mobile/screen/dash_board.dart';
import 'package:sme_mobile/screen/home.dart';
import 'package:sme_mobile/screen/panel.dart';

import 'item.dart';

class PanelControlState extends State<PanelControl> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ItemScreen(),
    BillScreen(),
    DashBoardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('col1')
                      ],

                    )
                  ],
                )
              ),
              ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.blue,
                  ),
                  title: Text('Management'),
              ),ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                title: Text('Settings'),
              )
        ],
      )),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Items'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Bill'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('More'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
