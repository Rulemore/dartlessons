import 'package:dio/dio.dart';

Future getPosts() async {
  final dio = Dio();
  try {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    return response.data;
  } catch (e) {
    print(e);
  }
  return null;
}
