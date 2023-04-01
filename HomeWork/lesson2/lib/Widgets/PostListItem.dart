import 'package:flutter/material.dart';

import '../Models/posts.dart';


class PostListItem extends StatelessWidget {
  const PostListItem({super.key, required this.post});

  final Posts post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('${post.id}', style: textTheme.bodySmall),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
