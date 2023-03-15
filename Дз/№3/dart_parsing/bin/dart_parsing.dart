import 'package:dio/dio.dart';
import 'package:dart_parsing/de_class.dart';

Future parse1(String a) async {
  final dio = Dio();
  try {
    final result = await dio.get(a); 
    return result.data;
  } catch(e) {
    return null;
  }
}

void main(List<String> arguments) async {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  List<dynamic>? html = await parse1(url);
  if (html!=null) {
    for (dynamic a in html) {
      print(Posts.fromJson(a).userId);
      print(Posts.fromJson(a).id);
      print(Posts.fromJson(a).title);
      print('$Posts.fromJson(a).body\n');
    }
  }
}
