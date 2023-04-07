// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppColors {
  static final mainLightPink = Color.fromARGB(255, 225, 196, 196);
  static final mainLightPinkunselected = Color.fromARGB(255, 118, 98, 98);
  static final bottomNavigationBarThemeLightPink = BottomNavigationBarThemeData(
    selectedLabelStyle: TextStyle(
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w100,
      letterSpacing: 0.5,
      fontSize: 12,
    ),
    unselectedLabelStyle: TextStyle(
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w100,
        fontSize: 12,
        letterSpacing: 0.5),
    selectedIconTheme: IconThemeData(color: Colors.white),
    unselectedIconTheme:
        IconThemeData(color: AppColors.mainLightPinkunselected),
    type: BottomNavigationBarType.fixed,
    backgroundColor: AppColors.mainLightPink,
    selectedItemColor: AppColors.mainLightPinkunselected,
    unselectedItemColor: AppColors.mainLightPinkunselected,
  );
  static final elevatedButtonThemeDataLightPink = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      textStyle: GoogleFonts.montserrat(
        fontSize: 20,
      ),
      fixedSize: const Size(100, 60),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 0.7,
          color: Color.fromRGBO(118, 98, 98, 1),
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      elevation: 5,
      shadowColor: Colors.black,
    ),
  );
}
