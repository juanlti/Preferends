import 'package:flutter/material.dart';
import 'package:preferences_app/providers/providersTheme.dart';
import 'package:preferences_app/share_preferens/preferencias.dart';
import 'package:preferences_app/widgets/side_menu.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  //use the next name for navigator between pages
  static const String routerName = 'SettingHome';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override

  // State<SettingScreen> createState() => _SettingScreenState();

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Settings'),
        ),
        body: SafeArea(
            minimum: EdgeInsets.only(top: 30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Ajustes',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                  ),
                  const Divider(),
                  SwitchListTile.adaptive(
                      title: Text('DarMode'),
                      activeColor: Colors.green,
                      value: Preferences.isDarkMode,
                      enableFeedback: true,
                      onChanged: (v) {
                        setState(() {
                          Preferences.isDarkMode = v;
                          if (v) {
                            //v is true then ThemeDark
                            themeProvider.setDarkMode();
                          } else {
                            themeProvider.setLightMode();
                          }
                        });
                        print('valor selecionado ? ${Preferences.isDarkMode}');
                      }),
                  const Divider(),
                  RadioListTile<int>(
                    title: Text('Masculino'),
                    groupValue: Preferences.gender,
                    value: 1,
                    onChanged: (value) {
                      Preferences.gender = value ?? 1;
                      setState(() {});
                    },
                  ),
                  RadioListTile<int>(
                    title: Text('Femenino'),
                    groupValue: Preferences.gender,
                    value: 2,
                    onChanged: (value) {
                      Preferences.gender = value ?? 2;
                      setState(() {});
                    },
                  ),
                  const Divider(),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nombre', helperText: 'Nombre del usuario'),
                    initialValue: Preferences.name,
                    onChanged: (Write) {
                      Preferences.name = Write ?? '';
                      setState(() {});
                    },
                  )
                ],
              ),
            )));
  }
}
