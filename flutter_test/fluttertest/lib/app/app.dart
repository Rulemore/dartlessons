import 'package:flutter/material.dart';
import 'home.dart';
import 'home_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Parser',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePageProvider(
              notifier: HomePageModel(),
              child: const HomePage(),
            ),
      },
      initialRoute: '/',
    );
  }
}
