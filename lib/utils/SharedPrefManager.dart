import 'dart:async';
import 'dart:convert';
import 'package:covid_19/models/Settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceKeys {
  static const String SETTINGS = "SETTINGS";
}

class SharedPrefManager {

   static Future<void> setUserSettingsProfile(Settings settings) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userSettingsJson = json.encode(settings);
    return prefs.setString(SharedPreferenceKeys.SETTINGS, userSettingsJson);
  }

 static Future<Settings> getUserSettingsProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Settings.fromJson(json.decode(prefs.getString(SharedPreferenceKeys.SETTINGS)));
  }

}