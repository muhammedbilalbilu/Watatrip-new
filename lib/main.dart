import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watatrip/Screen/Tour%20Offer%20Booking%20Review..dart';
import 'package:watatrip/Screen/TourOfferJoinActivityWidget.dart';
import 'package:watatrip/Screen/bookingCart.dart';
import 'package:watatrip/Screen/signUp.dart';

import 'package:watatrip/Screen/verifyAccount.dart';
import 'package:watatrip/widget/FabBar.dart';
import 'package:watatrip/widget/dart4.dart';

import 'Screen/test.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarColor: Color(0xFFF1F3F5),
      statusBarIconBrightness: Brightness.dark));
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
      theme: ThemeData(brightness: Brightness.light, useMaterial3: true),
      home: TourOfferJoinActivityWidget(), //MobileScreenLayout(),
    );
  }
}
