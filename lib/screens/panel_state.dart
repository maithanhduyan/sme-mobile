import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/bill.dart';
import 'package:sme_mobile/screens/dash_board.dart';
import 'package:sme_mobile/screens/home.dart';
import 'package:sme_mobile/screens/panel.dart';
import 'package:sme_mobile/theme/style.dart';

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
            padding: EdgeInsets.all(1),
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
                  leading:Icon(
                    Icons.settings ,
                    color: AppStyle.AppColor,),
                  title: Text('Settings'),
                onTap: () => Navigator.pushNamed(context, '/setting'),
//                onLongPress: (),
              ),ListTile(
                leading: Icon(
                  Icons.print,
                  color: AppStyle.AppColor,
                ),
                title: Text('Printer'),
                onTap: () => Navigator.pushNamed(context, '/setting'),
              ),Divider(
                height: 1,
              ),ListTile(
                leading: Icon(
                  Icons.arrow_back,
                  color: AppStyle.AppColor,
                ),
                title: Text('Logout'),
                onTap: () => Navigator.pushNamed(context, '/login'),
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
