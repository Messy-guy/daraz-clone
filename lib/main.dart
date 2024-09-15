// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_signup_app/ui/loginsignupscreen.dart';
import 'package:login_signup_app/ui/numberloginpage.dart';
import 'package:login_signup_app/ui/numbersignupscreen.dart';
import 'package:login_signup_app/ui/passwordlogin.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:loginsignupscreen(),
      routes:{
        '/signuppage1' :(context) => Numbersignupscreen(),
        '/signuppage2' :(context) => Passwordloginscreen() ,
        '/signuppage3' :(context) => Numberloginpage(),
      },
    );
  }
}