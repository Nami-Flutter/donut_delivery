import 'package:donut_delivery/preferences/preferences.dart';
import 'package:donut_delivery/uis/splash_screen/splash_screen.dart';
import 'package:donut_delivery/utils/colors.dart';
import 'package:donut_delivery/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
var navigator = GlobalKey<NavigatorState>();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  String lang = supportedLanguages[0].languageCode;
  await Preferences.instance.getAppSetting().then((value){
    lang = value.lang;
  });
  runApp(EasyLocalization(
      supportedLocales: supportedLanguages,
      path: 'assets/languages',
      saveLocale: false,
      startLocale: Locale(lang),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(primarySwatch: colorPrimaryTheme),
      navigatorKey: navigator,
      home:const SplashScreen() ,
    );
  }
}

