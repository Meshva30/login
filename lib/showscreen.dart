import 'package:flutter/material.dart';
class showscreen extends StatefulWidget {
  final String email;
  final String password;

  const showscreen({Key? key, required this.email, required this.password})
      : super(key: key);


  @override
  State<showscreen> createState() => _showscreenState();
}

class _showscreenState extends State<showscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
