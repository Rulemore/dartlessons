import 'dart:async';
import 'package:bloc/bloc.dart';

import '../Dio.dart';
import 'posts_event.dart';
import 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial());

  @override
  Stream<PostsState> mapEventToState(PostsEvent event) async* {
    if (event is FetchPosts) {
      yield PostsLoading();
      try {
        List<dynamic> posts = await getPosts();
        yield PostsLoaded(posts: posts);
      } catch (error) {
        yield PostsError(error: error.toString());
      }
    } else if (event is ClearPosts) {
      yield PostsInitial();
    }
  }
}

