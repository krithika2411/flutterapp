import 'package:flutter/material.dart';
import 'package:loginsignup/login.dart';
import 'package:loginsignup/register.dart';
import 'package:loginsignup/razor_page.dart';
import 'package:loginsignup/intro_page.dart';
import 'package:loginsignup/home_page.dart';


void main() {
  runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
    initialRoute:'intro' ,
   routes: {
   
   'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'razor':(context) => RazorPage(),
      'intro':(context) => IntroScreen(),
      'home':(context) => HomePage(),
   }, 
  ));
}

