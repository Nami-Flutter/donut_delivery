import 'package:donut_delivery/routes/routes.dart';
import 'package:donut_delivery/uis/auth/login_screen.dart';
import 'package:donut_delivery/utils/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value){
      pushAndRemoveUntil(const LoginScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,toolbarHeight: 0,),
      body: Container(color: white,child: Center(
        child: Image.asset('assets/images/logo.png',width: 180,height: 145,),
      ),),
    );
  }
}
