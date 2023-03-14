import 'package:flutter/material.dart';
import 'package:list_parser/app/app.dart';
import 'package:list_parser/app/list_widget_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ListWidgetModel(),
      child: MyApp(),
    ),
  );
}
