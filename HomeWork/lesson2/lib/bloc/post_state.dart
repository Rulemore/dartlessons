part of 'posts_bloc.dart';

enum PostStatus { initial, success, failure, cleared }

class PostState extends Equatable {
  const PostState({
    this.status = PostStatus.initial,
    this.posts = const <Posts>[],
    this.hasReachedMax = false,
  });

  final PostStatus status;
  final List<Posts> posts;
  final bool hasReachedMax;

  PostState copyWith({
    PostStatus? status,
    List<Posts>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }''';
  }

  @override
  List<Object> get props => [status, posts, hasReachedMax];
}