import 'package:flutter/material.dart';
import 'package:login/homescreen.dart';
import 'package:login/showscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => homescreen(),
      'show':(context) => showscreen(email: 'email',password:'password'),
    },
  ));
}
