import 'package:flutter/material.dart';

DrawerHeader aDrawer() {
  return DrawerHeader(
    child:  Container(),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/menu-img.jpg'),
        fit: BoxFit.cover,
      ),
    ),
  );
}
