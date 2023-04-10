import 'package:json_annotation/json_annotation.dart';

part 'json_mapper.dart';

@JsonSerializable()
class Posts {
  int userId;
  int id;
  String title;
  String body;

  Posts({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
  Map<String, dynamic> toJson() => _$PostsToJson(this);
}