import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'background.dart';
import 'category.dart';
import 'post.dart';
import 'type.dart';

class Result extends Equatable {
  final int? id;
  final String? guid;
  final Type? type;
  final bool? isDark;
  final Post? post;
  final String? resourcetype;
  final String? title;
  final String? content;
  final String? plainContent;
  final Category? category;
  final String? image;
  final String? authorName;
  final Background? background;

  const Result({
    this.id,
    this.guid,
    this.type,
    this.isDark,
    this.post,
    this.resourcetype,
    this.title,
    this.content,
    this.plainContent,
    this.category,
    this.image,
    this.authorName,
    this.background,
  });

  factory Result.fromMap(Map<String, dynamic> data) => Result(
        id: data['id'] as int?,
        guid: data['guid'] as String?,
        type: data['type'] == null
            ? null
            : Type.fromMap(data['type'] as Map<String, dynamic>),
        isDark: data['is_dark'] as bool?,
        post: data['post'] == null
            ? null
            : Post.fromMap(data['post'] as Map<String, dynamic>),
        resourcetype: data['resourcetype'] as String?,
        title: data['title'] as String?,
        content: data['content'] as String?,
        plainContent: data['plain_content'] as String?,
        category: data['category'] == null
            ? null
            : Category.fromMap(data['category'] as Map<String, dynamic>),
        image: data['image'] as String?,
        authorName: data['author_name'] as String?,
        background: data['background'] == null
            ? null
            : Background.fromMap(data['background'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'guid': guid,
        'type': type?.toMap(),
        'is_dark': isDark,
        'post': post?.toMap(),
        'resourcetype': resourcetype,
        'title': title,
        'content': content,
        'plain_content': plainContent,
        'category': category?.toMap(),
        'image': image,
        'author_name': authorName,
        'background': background?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Result].
  factory Result.fromJson(String data) {
    return Result.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Result] to a JSON string.
  String toJson() => json.encode(toMap());

  Result copyWith({
    int? id,
    String? guid,
    Type? type,
    bool? isDark,
    Post? post,
    String? resourcetype,
    String? title,
    String? content,
    String? plainContent,
    Category? category,
    String? image,
    String? authorName,
    Background? background,
  }) {
    return Result(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      type: type ?? this.type,
      isDark: isDark ?? this.isDark,
      post: post ?? this.post,
      resourcetype: resourcetype ?? this.resourcetype,
      title: title ?? this.title,
      content: content ?? this.content,
      plainContent: plainContent ?? this.plainContent,
      category: category ?? this.category,
      image: image ?? this.image,
      authorName: authorName ?? this.authorName,
      background: background ?? this.background,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      guid,
      type,
      isDark,
      post,
      resourcetype,
      title,
      content,
      plainContent,
      category,
      image,
      authorName,
      background,
    ];
  }
}
