import 'package:flutter/material.dart';
import 'package:project/components/login.dart';
import 'package:project/components/home.dart';
import 'package:project/components/signinwithgoogle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
