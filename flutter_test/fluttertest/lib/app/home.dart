import 'package:flutter/material.dart';
import 'home_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = HomePageProvider.watch(context)!.notifier as HomePageModel;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: model.getPosts,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('List Parser'),
        actions: [
          IconButton(
              onPressed: model.clearPosts, icon: const Icon(Icons.delete))
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
