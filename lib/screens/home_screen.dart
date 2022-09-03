import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferens/preferencias.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //use the next name for navigator between pages
  static const String routerName = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(title: Text('Home')),
        body: Align(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 100),
            itemExtent: 50.0,
            children: [
              Text('isDarkMode: ${Preferences.isDarkMode}'),
              Text('Genero: 1${Preferences.gender}'),
              Text('Nombre de usuario:${Preferences.name}'),
            ],
          ),
        ));
  }
}
