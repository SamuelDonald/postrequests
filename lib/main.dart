import 'package:flutter/material.dart';
import 'package:postrequest/addproduct.dart';
import 'package:postrequest/dashboard.dart';
import 'package:postrequest/login2.0.dart';
import 'package:postrequest/samlogin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home:AddProduct(),
    );
  }
}
