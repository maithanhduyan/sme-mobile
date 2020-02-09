import 'package:flutter/material.dart';
import 'package:sme_mobile/routes/routes.dart';
import 'package:sme_mobile/theme/style.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(1),
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              context: context,
              icon: Icons.settings,
              text: 'Settings',
              route: Routes.setting),
          _dividerLine(),
          _createDrawerItem(
              context: context,
              icon: Icons.assignment,
              text: 'Report',
              route: Routes.report),
          _createDrawerItem(
              context: context,
              icon: Icons.line_style,
              text: 'Inventory Manager',
              route: Routes.inventory),
          _createDrawerItem(
              context: context,
              icon: Icons.card_membership,
              text: 'Bill List',
              route: Routes.billList),
          _createDrawerItem(
              context: context,
              icon: Icons.keyboard_return,
              text: 'Logout',
              route: Routes.login),
          _dividerLine(),
          ListTile(
            // Version
            title: Text('Version 0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: Colors.blue),
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
      {IconData icon, String text, String route, BuildContext context}) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppStyle.appColor,
      ),
      title: Text(text),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }

  Widget _dividerLine() {
    return Divider(
      height: 1,
    );
  }
}
