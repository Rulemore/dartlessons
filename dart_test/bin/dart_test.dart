import 'package:dart_test/model.dart';
import 'package:dart_test/get.dart';

void main(List<String> arguments) async {
  List<dynamic>? posts = await getPosts();
  if (posts != null) {
    for (var post in posts) {
      print(Posts.fromJson(post).userId);
      print(Posts.fromJson(post).id);
      print(Posts.fromJson(post).title);
      print(Posts.fromJson(post).body);
    }
  }
}