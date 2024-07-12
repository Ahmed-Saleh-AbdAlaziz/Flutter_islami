
import 'package:flutter/material.dart';
import 'package:islami_flutter/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routName="Splash";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // إعداد مؤقت لمدة 3 ثواني للانتقال إلى الشاشة التالية
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}

