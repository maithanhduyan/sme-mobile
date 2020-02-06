import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sme_mobile/screens/screen_manager.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text("SME - POS"),
          actions: <Widget>[
            IconButton(
              icon: Icon(CupertinoIcons.search),
              tooltip: 'Search product',
              onPressed: (){
                //scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),
          ],
        ),
        body: CupertinoApp(
          home: ScreenManager(),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blue
                ),
                child: Text(
                  'POS - Management',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Message"),
              ),
              ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Report"),
              ),
              ListTile(
                leading: Icon(Icons.apps),
                title: Text("Management"),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("Wallet"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}