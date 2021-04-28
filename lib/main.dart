import 'package:burger_restaurant/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger Resturant',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[50],
        primaryColor: Color(0xFFFFC200),
        accentColor: Color(0xFF372930),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 20,
              color: Color(0xFF241424),
              fontWeight: FontWeight.bold),
          bodyText1: TextStyle(
              fontSize: 18,
              color: Color(0xFF241424).withOpacity(0.3),
              fontWeight: FontWeight.normal),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
