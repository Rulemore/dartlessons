import 'package:parser/http.dart';
import 'package:parser/post.dart';

void main(List<String> arguments) async {
  List<dynamic>? posts;
  posts = await getPosts();
  if (posts != null) {
    for (dynamic json in posts) {
      print(Post.postFromJson(json).id);
      print(Post.postFromJson(json).userId);
      print(Post.postFromJson(json).title);
      print(Post.postFromJson(json).body);
    }
  }
}
