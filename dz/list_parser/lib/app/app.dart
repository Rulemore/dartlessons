import 'package:flutter/material.dart';
import 'package:list_parser/app/home_page.dart';
import 'package:list_parser/app/home_page_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Parser',
      debugShowCheckedModeBanner: false,
      //Маршрутизация внутри приложения
      routes: {
        '/': (context) => HomePageProvider(
              //Оборачиваем HomePage в HomePageProvider и передаем в него HomePageModel
              notifier: HomePageModel(),
              child: const HomePage(),
            ),
      },
      //Стартовый маршрут
      initialRoute: '/',
    );
  }
}
