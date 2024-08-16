import 'package:flutter/material.dart';
import 'package:wishlist/shared/shared.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: brandColor,
  scaffoldBackgroundColor: whiteColor,
  cardColor: whiteColor,
  appBarTheme: AppBarTheme(
      color: brandColor,
      iconTheme: const IconThemeData(color: whiteColor),
      titleTextStyle: const TextStyle(
        fontSize: 24,
      )),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(
        color: Colors.black87, fontSize: 28, fontWeight: FontWeight.bold),
    headlineSmall: TextStyle(
        color: Colors.black54, fontSize: 24, fontWeight: FontWeight.normal),
    bodyLarge: TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(
        color: Colors.black54, fontSize: 14, fontWeight: FontWeight.normal),
  ),
  iconTheme: const IconThemeData(color: Colors.black),
  dividerColor: lightGreyColor,
  dividerTheme: DividerThemeData(
    color: lightGreyColor,
    thickness: 1,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: brandColor,
    selectedItemColor: whiteColor,
    unselectedItemColor: Colors.grey[400],
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: brandColor,
    foregroundColor: whiteColor,
  ),
);
