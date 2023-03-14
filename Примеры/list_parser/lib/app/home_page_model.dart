import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:list_parser/app/models/model.dart';

class HomePageModel extends ChangeNotifier {
  final List<Post> _posts = [];
  List<Post> get posts => _posts;
  //Получаем посты
  void getPosts() async {
    final dio = Dio();
    try {
      await dio.get('https://jsonplaceholder.typicode.com/posts').then((value) => createPosts(value.data));
    } catch (e) {
      print(e);
    }
  }

  //Парсим посты
  void createPosts(dynamic data) {
    for (var post in data) {
      _posts.add(Post.fromJson(post));
    }
    notifyListeners(); //Уведомляем слушателей об изменении
  }

  void clearPosts() {
    _posts.clear();
    notifyListeners(); //Уведомляем слушателей об изменении
  }
}

//Этот класс должен автоматически подставится из подсказок
class HomePageProvider extends InheritedNotifier {
  const HomePageProvider({
    Key? key,
    required Widget child,
    required HomePageModel notifier, // Вот это нужно руками дописать и добавить в super конструктор
  }) : super(key: key, child: child, notifier: notifier);

  static HomePageProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomePageProvider>();
  }

  static HomePageProvider? read(BuildContext context) {
    final widget = context.getElementForInheritedWidgetOfExactType<HomePageProvider>()?.widget;
    return widget is HomePageProvider ? widget : null;
  }
}
