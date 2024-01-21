import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color blackhowlprimary = Color(0xff1E1E2C);
const Color blackhowllight = Color(0xff2F3142);
const Color blackhowlcontrast = Color(0xffFFF8DE);
const Color White = Color(0xffffffff);

final ThemeData blackHowl = ThemeData(
    primaryColor: blackhowlprimary,
    primaryColorLight: blackhowllight,
    scaffoldBackgroundColor: blackhowlprimary,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: blackhowlprimary,
      shadowColor: Color.fromARGB(255, 0, 0, 0),
      elevation: 10,
      titleTextStyle: TextStyle(
          //Title
          color: White,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 18),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
          //Heading
          color: White,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 18),
      headlineMedium: TextStyle(
          //History title
          color: blackhowlcontrast,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 12),
      headlineSmall: TextStyle(
          //History title
          color: White,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 12),
      bodyLarge: TextStyle(
          //Timer
          color: blackhowlcontrast,
          fontFamily: 'ARLRDBD',
          fontSize: 100),
      bodyMedium: TextStyle(
          //Timer
          color: blackhowlcontrast,
          fontFamily: 'Inter',
          fontSize: 18,
          fontWeight: FontWeight.w700),
      bodySmall: TextStyle(
          //TextField subtitle
          color: blackhowlprimary,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 18),
      titleLarge: TextStyle(
          //TextField subtitle
          color: White,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          fontSize: 12),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        backgroundColor: blackhowlcontrast,
        textStyle: TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: blackhowlcontrast,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: blackhowllight),
        borderRadius: BorderRadius.circular(100.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: blackhowllight),
        borderRadius: BorderRadius.circular(100.0),
      ),
      filled: true,
      hintStyle: TextStyle(
          color: White,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 12),
      fillColor: blackhowlprimary,
    ));
