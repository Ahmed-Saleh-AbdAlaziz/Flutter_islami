//
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/homeScreen.dart';
//
//
// class SplashScreen extends StatefulWidget {
//   static const String routName="Splash";
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//
//     Future.delayed(Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) =>Homescreen()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Image.asset('assets/images/splash.png',fit: BoxFit.fill,),
//       ),
//     );
//   }
// }
//
