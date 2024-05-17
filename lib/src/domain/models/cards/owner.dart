import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'avatar.dart';

class Owner extends Equatable {
  final String? firstName;
  final String? lastName;
  final Avatar? avatar;

  const Owner({this.firstName, this.lastName, this.avatar});

  factory Owner.fromMap(Map<String, dynamic> data) => Owner(
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        avatar: data['avatar'] == null
            ? null
            : Avatar.fromMap(data['avatar'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Owner].
  factory Owner.fromJson(String data) {
    return Owner.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Owner] to a JSON string.
  String toJson() => json.encode(toMap());

  Owner copyWith({
    String? firstName,
    String? lastName,
    Avatar? avatar,
  }) {
    return Owner(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      avatar: avatar ?? this.avatar,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [firstName, lastName, avatar];
}
