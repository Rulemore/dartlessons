import 'package:parser/posts.dart';
import 'package:parser/remote_service.dart';

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