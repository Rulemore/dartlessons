import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'widgets/home_widget.dart';
import 'widgets/profile_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: AppColors.elevatedButtonThemeDataLightPink,
        bottomNavigationBarTheme: AppColors.bottomNavigationBarThemeLightPink,
      ),
      routes: {
        // ignore: prefer_const_constructors
        '/home': (context) => HomeWidget(),
        // ignore: prefer_const_constructors
        '/profile': (context) => ProfileWidget(),
      },
      initialRoute: '/home',
    );
  }
}
