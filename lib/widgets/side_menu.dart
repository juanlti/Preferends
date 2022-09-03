import 'package:flutter/material.dart';
import 'package:preferences_app/screens/home_screen.dart';
import 'package:preferences_app/screens/setting_screen.dart';
import 'package:preferences_app/widgets/drawerHeaderCustom.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          aDrawer(),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('People'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingScreen.routerName);

              /*
              //closed drawer when back page
              Navigator.pop(context);

              //travel a new page
              Navigator.pushNamed(context, SettingScreen.routerName);

              */
            },
          )
        ],
      ),
    );
  }
}
