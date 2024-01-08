import 'package:flutter/material.dart';
import 'pages/Restaurant.dart';
import 'pages/Menu.dart';
import 'pages/Login.dart';
import 'pages/Shop.dart';
import 'pages/Accommodation.dart';
import 'pages/Attraction.dart';
import 'pages/Other.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey, //////////แก้
      ),
      // home : LoginPage(),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context)=> const LoginPage(),
        '/menu': (BuildContext context)=> const MenuPage(),
        '/other': (BuildContext context)=> OtherPage(),
        '/shop':(BuildContext context)=> ShopPage(),
        '/restaurant':(BuildContext context)=> RestaurantPage(),
        '/accommodation':(BuildContext context)=> AccommodationPage(),
        '/attraction':(BuildContext context)=> AttractionPage(),

      },
      initialRoute: '/',
    );
  }
}
