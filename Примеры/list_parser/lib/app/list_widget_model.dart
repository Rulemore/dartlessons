import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:list_parser/app/models/model.dart';

class ListWidgetModel extends ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  void getPosts() async {
    final dio = Dio();
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts').then((value) => createPosts(value.data));
    } catch (e) {
      print(e);
    }
  }

  void createPosts(dynamic data) {
    for (var post in data) {
      _posts.add(Post.fromJson(post));
    }
    notifyListeners();
  }

  void clearPosts() {
    _posts.clear();
    notifyListeners();
  }
}
