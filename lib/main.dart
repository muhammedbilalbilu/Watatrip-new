import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:watatrip/Screen/Login.dart';
import 'package:watatrip/Screen/detailesScreen.dart';

import 'package:watatrip/Screen/homePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
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
      theme: ThemeData(brightness: Brightness.light),
      home: LoginScreen(),
    );
  }
}
