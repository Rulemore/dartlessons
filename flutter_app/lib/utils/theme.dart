import 'package:flutter/material.dart';
import 'package:flutter_app/utils/const.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData newTheme() => ThemeData(
      fontFamily: GoogleFonts.montserrat().fontFamily,
      brightness: Brightness.light,
      textTheme: const TextTheme().apply(
        bodyColor: textColor,
        displayColor: textColor,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: appbarColor,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(color: iconColor, weight: 0.9, size: 40)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: mainColor,
        foregroundColor: textColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18)),
        foregroundColor: MaterialStateColor.resolveWith((states) => textColor),
        padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
      )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedLabelStyle: const TextStyle(
          fontSize: 12.5,
        ),
        selectedItemColor: textColor,
        unselectedItemColor: iconColor,
        backgroundColor: mainColor,
        selectedIconTheme: IconThemeData(
          color: textColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: iconColor,
        ),
      ),
    );
