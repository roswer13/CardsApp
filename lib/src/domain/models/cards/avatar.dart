import 'dart:convert';

import 'package:equatable/equatable.dart';

class Avatar extends Equatable {
  final int? id;
  final String? image;
  final int? avatarType;

  const Avatar({this.id, this.image, this.avatarType});

  factory Avatar.fromMap(Map<String, dynamic> data) => Avatar(
        id: data['id'] as int?,
        image: data['image'] as String?,
        avatarType: data['avatar_type'] as int?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'image': image,
        'avatar_type': avatarType,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Avatar].
  factory Avatar.fromJson(String data) {
    return Avatar.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Avatar] to a JSON string.
  String toJson() => json.encode(toMap());

  Avatar copyWith({
    int? id,
    String? image,
    int? avatarType,
  }) {
    return Avatar(
      id: id ?? this.id,
      image: image ?? this.image,
      avatarType: avatarType ?? this.avatarType,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, image, avatarType];
}
