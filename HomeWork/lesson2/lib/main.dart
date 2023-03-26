import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Widgets/PostsList.dart';
import 'Widgets/SplashScreen.dart';
import 'bloc/posts_bloc.dart';
import 'bloc/posts_event.dart';
import 'bloc/posts_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => PostsBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              context.read<PostsBloc>().add(ClearPosts());
            },
          ),
        ],
      ),
      body: BlocConsumer<PostsBloc, PostsState>(
        listener: (context, state) {
          if (state is PostsError) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
          }
        },
        builder: (context, state) {
          if (state is PostsInitial) {
            context.read<PostsBloc>().add(FetchPosts());
            return SplashScreen();
          } else if (state is PostsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PostsLoaded) {
            return PostsList(posts: state.posts);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
