
import 'package:flutter/material.dart';
import 'package:untitled/home.dart';
import 'package:untitled/register.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>Mylogin(),
       'register':(context)=>MyRegister(),
        'home':(context)=>homePage()},
  ));
}
