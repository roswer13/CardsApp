import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'category.dart';
import 'owner.dart';

class Post extends Equatable {
  final int? id;
  final String? guid;
  final String? title;
  final String? image;
  final int? type;
  final Category? category;
  final Owner? owner;
  final bool? isNew;
  final bool? free;
  final String? duration;
  final String? previewDuration;
  final bool? isSaved;

  const Post({
    this.id,
    this.guid,
    this.title,
    this.image,
    this.type,
    this.category,
    this.owner,
    this.isNew,
    this.free,
    this.duration,
    this.previewDuration,
    this.isSaved,
  });

  factory Post.fromMap(Map<String, dynamic> data) => Post(
        id: data['id'] as int?,
        guid: data['guid'] as String?,
        title: data['title'] as String?,
        image: data['image'] as String?,
        type: data['type'] as int?,
        category: data['category'] == null
            ? null
            : Category.fromMap(data['category'] as Map<String, dynamic>),
        owner: data['owner'] == null
            ? null
            : Owner.fromMap(data['owner'] as Map<String, dynamic>),
        isNew: data['new'] as bool?,
        free: data['free'] as bool?,
        duration: data['duration'] as String?,
        previewDuration: data['preview_duration'] as String?,
        isSaved: data['is_saved'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'guid': guid,
        'title': title,
        'image': image,
        'type': type,
        'category': category?.toMap(),
        'owner': owner?.toMap(),
        'new': isNew,
        'free': free,
        'duration': duration,
        'preview_duration': previewDuration,
        'is_saved': isSaved,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Post].
  factory Post.fromJson(String data) {
    return Post.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Post] to a JSON string.
  String toJson() => json.encode(toMap());

  Post copyWith({
    int? id,
    String? guid,
    String? title,
    String? image,
    int? type,
    Category? category,
    Owner? owner,
    bool? isNew,
    bool? free,
    String? duration,
    String? previewDuration,
    bool? isSaved,
  }) {
    return Post(
      id: id ?? this.id,
      guid: guid ?? this.guid,
      title: title ?? this.title,
      image: image ?? this.image,
      type: type ?? this.type,
      category: category ?? this.category,
      owner: owner ?? this.owner,
      isNew: isNew ?? this.isNew,
      free: free ?? this.free,
      duration: duration ?? this.duration,
      previewDuration: previewDuration ?? this.previewDuration,
      isSaved: isSaved ?? this.isSaved,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      guid,
      title,
      image,
      type,
      category,
      owner,
      isNew,
      free,
      duration,
      previewDuration,
      isSaved,
    ];
  }
}
