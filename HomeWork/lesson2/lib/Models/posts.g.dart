// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Posts _$PostsFromJson(Map<String, dynamic> json) => Posts(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
