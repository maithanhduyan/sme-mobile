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
              _createHeader(),
              _createDrawerItem(icon: Icons.settings,text: 'Settings',route: '/setting'),
              _dividerLine(),
              _createDrawerItem(icon: Icons.assignment,text: 'Report',route: '/setting'),
              _createDrawerItem(icon: Icons.line_style,text: 'Inventory',route: '/setting'),
              _createDrawerItem(icon: Icons.card_membership,text: 'Bill List',route: '/setting'),
              _createDrawerItem(icon: Icons.keyboard_return,text: 'Logout',route: '/setting'),
              _dividerLine(),
              ListTile(
                // Version
                title: Text('Version 0.0.1'),
                onTap: () {},
              ),
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

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            color: Colors.blue
        ),
        child: Stack(children: <Widget>[
          Positioned(
            top: 10,
            left: 20,
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Text(
                  'A',
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Positioned(
              bottom: 12.0,
              left: 12.0,
              child: Text("tiachop0102@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, String route}) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppStyle.AppColor,
      ),
      title: Text(text),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }

  Widget _dividerLine(){
    return Divider(
      height: 1,
    );
  }
}
