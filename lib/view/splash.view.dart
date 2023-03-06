import 'dart:async';

import 'package:falle/utils/global.colors.dart';
import 'package:falle/view/login.view.dart';
import 'package:flutter/material.dart';
//import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to( LoginView());
      });
    return Scaffold(
     backgroundColor: GlobalColors.mainColor,
     body:  Center(
     /* child: Text(
        'FALL-E',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        
      )*/
      child: Hero(
        tag: 'logo', 
        child: Image.asset('assets/fallingman.png',),
      
        ),
     ),

  );
  }
}