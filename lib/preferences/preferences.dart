import 'dart:convert';

import 'package:donut_delivery/models/app_settings_local.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static final Preferences instance = Preferences._internal();

  Preferences._internal();

  Future<AppSettingsLocal> getAppSetting() async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    if(pref.getString("settings")!=null){
      AppSettingsLocal settings = AppSettingsLocal.fromJson(jsonDecode(pref.getString("settings")!));
      return settings;
    }else{
      return AppSettingsLocal();
    }
  }

  void updateAppSettings(AppSettingsLocal appSettingsLocal) async{
    SharedPreferences pref =await SharedPreferences.getInstance();
    pref.setString("settings", jsonEncode(appSettingsLocal.toJson()));

  }
}