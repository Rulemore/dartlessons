part of 'posts_bloc.dart';

abstract class PostEvent extends Equatable {


  @override
  List<Object?> get props => [];
}

class PostFetched  extends PostEvent {}
class ClearPosts extends PostEvent {}