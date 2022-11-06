import 'package:flutter/material.dart';
import 'package:watatrip/Screen/Login.dart';
import 'package:watatrip/Screen/Verify%20Account.dart';
import 'package:watatrip/Screen/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'watatrip',
      theme: ThemeData(brightness: Brightness.light),
      home: SignUpScreen(),
    );
  }
}
