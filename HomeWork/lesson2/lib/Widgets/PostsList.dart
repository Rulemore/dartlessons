import 'package:flutter/material.dart';
import 'package:lesson1/Dio.dart';
import 'package:lesson1/Models/posts.dart';

class PostsList extends StatefulWidget {
  final List<dynamic>? posts;

  PostsList({this.posts});

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  List<dynamic>? _posts;

  @override
  void initState() {
    super.initState();
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    List<dynamic>? posts = await getPosts();
    if (mounted) {
      setState(() {
        _posts = posts;
      });
    }
  }

  Future<void> _refreshPosts() async {
    List<dynamic>? posts = await getPosts();
    if (mounted) {
      setState(() {
        _posts = posts;
      });
    }
  }

  void clearPosts() {
    setState(() {
      _posts = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_posts == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return RefreshIndicator(
        onRefresh: _refreshPosts,
        child: ListView.builder(
          itemCount: _posts!.length,
          itemBuilder: (BuildContext context, int index) {
            Posts postObject = Posts.fromJson(_posts![index]);
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
}
