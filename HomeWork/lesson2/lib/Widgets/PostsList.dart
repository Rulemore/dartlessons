import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Models/posts.dart';
import '../bloc/posts_bloc.dart';
import '../bloc/posts_event.dart';

class PostsList extends StatelessWidget {
  final List<dynamic> posts;

  const PostsList({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<PostsBloc>().add(FetchPosts());
      },
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          Posts postObject = Posts.fromJson(posts[index]);
          return ListTile(
            title: Text(postObject.title),
            subtitle: Text(postObject.body),
            leading: Text('${postObject.id}'),
            trailing: Text('${postObject.userId}'),
          );
        },
      ),
    );
  }
}
