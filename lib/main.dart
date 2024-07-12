import 'package:flutter/material.dart';
import 'package:islami_flutter/homeScreen.dart';
import 'package:islami_flutter/splashScreen.dart';

void main(){
  runApp(MyAppIslami());
}

class MyAppIslami extends StatelessWidget {
  const MyAppIslami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:SplashScreen.routName,
      routes:{
        SplashScreen.routName:(context)=>SplashScreen(),
        HomeScreen.routName:(context)=>HomeScreen(),
      },
    );
  }
}
