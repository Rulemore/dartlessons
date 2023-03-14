import 'package:flutter/material.dart';
import 'package:list_parser/app/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Parser',
      home: HomePage(),
    );
  }
}
