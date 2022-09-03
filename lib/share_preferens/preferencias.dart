import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
//all methods statics
  @override

//atributes
  static SharedPreferences? _prefs;
  static String _name = 'unUsuario';
  static bool _isDarkMode = false;
  static int _gender = 1;

//initialize Preferences with atributes

  static Future initPrefs() async {
    final _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs?.getString('name') ?? _name;
  }

  static void set name(String unName) {
    _name = unName;
    // 'name' es la clave y unName es el valor
    _prefs?.setString('name', unName);
  }

  static bool get isDarkMode {
    return _prefs?.getBool('isDarkMode') ?? _isDarkMode;
  }

  static void set isDarkMode(bool isDarkModeValue) {
    _isDarkMode = isDarkModeValue;
    // 'isDarkMode' es la clave y isDarkModeValue es el valor
    _prefs?.setBool('isDarkMode', isDarkModeValue);
  }

  static int get gender {
    return _prefs?.getInt('gender') ?? _gender;
  }

  static void set gender(int unGenderValue) {
    _gender = unGenderValue;
    // 'gender' es la clave y unGenderValue es el valor
    _prefs?.setInt('gender', unGenderValue);
  }
}
