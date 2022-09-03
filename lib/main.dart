import 'package:flutter/material.dart';
import 'package:preferences_app/providers/providersTheme.dart';
import 'package:preferences_app/screens/home_screen.dart';
import 'package:preferences_app/screens/setting_screen.dart';
import 'package:preferences_app/share_preferens/preferencias.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  //helper Widget for   await Preferences.init();
  //First step: initialize Preferends with data default
  WidgetsFlutterBinding.ensureInitialized();

  await Preferences.initPrefs();

  runApp(
    //Seconds builder Provider with data initialize previously
    MultiProvider(providers: [
    ChangeNotifierProvider(create: ((_) {
      return ThemeProvider(isDarkMode: Preferences.isDarkMode);
    }))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingScreen.routerName: (_) => const SettingScreen(),
      },
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}
