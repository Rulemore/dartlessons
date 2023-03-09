import 'package:lesson1/lesson1.dart' as lesson1;
import 'package:lesson1/lesson1.dart';
import 'package:lesson1/posts.dart';

void main(List<String> arguments) async {
  List<dynamic>? posts = await getPosts();
  if (posts != null) {
    for (var post in posts) {
      Posts postObject = Posts.fromJson(post);
      print(postObject.userId);
      print(postObject.id);
      print(postObject.title);
      print(postObject.body);
    }
  }
}
