import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/app/model.dart';

class HomePageModel extends ChangeNotifier {
  final List<Posts> _posts = [];
  List<Posts> get posts => _posts;

  void getPosts() async {
    final dio = Dio();
    try {
      await dio
          .get('https://jsonplaceholder.typicode.com/posts')
          .then((value) => createPosts(value.data));
    } catch (e) {
      print(e);
    }
  }

  void createPosts(dynamic data) {
    for (var post in data) {
      _posts.add(Posts.fromJson(post));
    }
    notifyListeners();
  }

  void clearPosts() {
    _posts.clear();
    notifyListeners();
  }
}

class HomePageProvider extends InheritedNotifier {
  const HomePageProvider({
    Key? key,
    required Widget child,
    required HomePageModel notifier,
  }) : super(key: key, child: child, notifier: notifier);

  static HomePageProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomePageProvider>();
  }

  static HomePageProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<HomePageProvider>()
        ?.widget;
    return widget is HomePageProvider ? widget : null;
  }
}
