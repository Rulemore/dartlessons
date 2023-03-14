import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'list_widget_model.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<ListWidgetModel>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.getPosts();
        },
        child: const Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: const Text('List Parser'),
        actions: [
          IconButton(
              onPressed: () {
                model.clearPosts();
              },
              icon: Icon(Icons.clear))
        ],
      ),
      body: ListView.builder(
        itemCount: model.posts.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Text(model.posts[index].title),
                Text(model.posts[index].body),
                Text(model.posts[index].id.toString()),
                Text(model.posts[index].userId.toString()),
              ],
            ),
          );
        },
      ),
    );
  }
}
