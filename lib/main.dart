import 'package:flutter/material.dart';
import 'package:flutter_simple_app/screen/home_pade.dart';
import 'package:flutter_simple_app/screen/sign_in.dart';
import 'package:flutter_simple_app/screen/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black26,
        primarySwatch: Colors.pink,
      scaffoldBackgroundColor: Colors.pink[100],

      ),
      home: const SignIn(),
    );
  }
}
