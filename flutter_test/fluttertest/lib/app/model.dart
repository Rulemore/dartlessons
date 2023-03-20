import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class Posts {
  int userId;
  int id;
  String title;
  String body;

  Posts({
    required this.userId,
    required this.id,
    required this.body,
    required this.title,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
  Map<String, dynamic> toJson() => _$PostsToJson(this);
}
