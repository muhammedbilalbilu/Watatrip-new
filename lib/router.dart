import 'package:flutter/material.dart';
import 'package:watatrip/Screen/AgriBookingScreen.dart';
import 'package:watatrip/Screen/ChatScreen.dart';
import 'package:watatrip/Screen/ConcertsBookingScreen.dart';
import 'package:watatrip/Screen/CultourlTour.dart';
import 'package:watatrip/Screen/HeritageBookingScreen.dart';
import 'package:watatrip/Screen/Login.dart';
import 'package:watatrip/Screen/OutdoorBookingScreen.dart';
import 'package:watatrip/Screen/SportsTour.dart';
import 'package:watatrip/Screen/WaterAdve.dart';
import 'package:watatrip/Screen/bookinConfrome.dart';
import 'package:watatrip/Screen/bookingCart.dart';
import 'package:watatrip/Screen/bookingScreen.dart';
import 'package:watatrip/Screen/homePage.dart';
import 'package:watatrip/Screen/searchScreen.dart';
import 'package:watatrip/Screen/signUp.dart';
import 'package:watatrip/Screen/verifyAccount.dart';
import 'package:watatrip/errorScreen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case SignUpScreen.routeName:
      return MaterialPageRoute(builder: (context) => SignUpScreen());
    case WaterAdvancer.routeName:
      return MaterialPageRoute(builder: (context) => WaterAdvancer());
    case VerifyAccount.routeName:
      return MaterialPageRoute(builder: (context) => VerifyAccount());
    case SportsBookingScreen.routeName:
      return MaterialPageRoute(builder: (context) => SportsBookingScreen());
    case SearchScreen.routeName:
      return MaterialPageRoute(builder: (context) => SearchScreen());
    case OutdoorBookingScreen.routeName:
      return MaterialPageRoute(builder: (context) => OutdoorBookingScreen());
    case HeritageBookingScreen.routeName:
      return MaterialPageRoute(builder: (context) => HeritageBookingScreen());
    case CultureTourScreen.routeName:
      return MaterialPageRoute(builder: (context) => CultureTourScreen());
    case CityBookingScreen.routeName:
      return MaterialPageRoute(builder: (context) => CityBookingScreen());
    case ChatWidget.routeName:
      return MaterialPageRoute(builder: (context) => ChatWidget());
    case BookingScreen2.routeName:
      return MaterialPageRoute(builder: (context) => BookingScreen2());
    case CartDetailsScreen.routeName:
      return MaterialPageRoute(builder: (context) => CartDetailsScreen());
    case BookingConformed.routeName:
      return MaterialPageRoute(builder: (context) => BookingConformed());
    case Agritour.routeName:
      return MaterialPageRoute(builder: (context) => Agritour());
    case HomePage.routeName:
      return MaterialPageRoute(builder: (context) => HomePage());
    default:
      return MaterialPageRoute(
          builder: (context) => const Scaffold(
                body: ErrorScreen(),
              ));
  }
}
