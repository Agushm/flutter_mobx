import 'package:boilerplate/ui/home/home.dart';
import 'package:boilerplate/ui/login/login.dart';
import 'package:boilerplate/ui/splash/splash.dart';
import 'package:boilerplate/ui/trip/trip_detail.dart';
import 'package:boilerplate/ui/trip/trip.dart';
import 'package:boilerplate/ui/trip/trip_facility.dart';
import 'package:flutter/material.dart';

import '../../ui/trip/trip_pricelist.dart';

class Routes {
  Routes._();

  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String trip = '/trip';
  static const String detailTrip = '/trip_detail';
  static const String tripFacility = '/trip_facility';
  static const String tripPricelist = '/trip_pricelist';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
    trip: (BuildContext context) => TripScreen(),
    detailTrip: (BuildContext context) => DetailTripScreen(),
    tripFacility: (BuildContext context) => TripFacilityScreen(),
    tripPricelist: (BuildContext context) => TripPricelistScreen(),
  };
}
