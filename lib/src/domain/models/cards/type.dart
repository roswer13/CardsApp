import 'dart:convert';

import 'package:equatable/equatable.dart';

class Type extends Equatable {
  final int? id;
  final String? title;
  final int? cardCategory;
  final String? lightIcon;
  final String? darkIcon;

  const Type({
    this.id,
    this.title,
    this.cardCategory,
    this.lightIcon,
    this.darkIcon,
  });

  factory Type.fromMap(Map<String, dynamic> data) => Type(
        id: data['id'] as int?,
        title: data['title'] as String?,
        cardCategory: data['card_category'] as int?,
        lightIcon: data['light_icon'] as String?,
        darkIcon: data['dark_icon'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'card_category': cardCategory,
        'light_icon': lightIcon,
        'dark_icon': darkIcon,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Type].
  factory Type.fromJson(String data) {
    return Type.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Type] to a JSON string.
  String toJson() => json.encode(toMap());

  Type copyWith({
    int? id,
    String? title,
    int? cardCategory,
    String? lightIcon,
    String? darkIcon,
  }) {
    return Type(
      id: id ?? this.id,
      title: title ?? this.title,
      cardCategory: cardCategory ?? this.cardCategory,
      lightIcon: lightIcon ?? this.lightIcon,
      darkIcon: darkIcon ?? this.darkIcon,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      title,
      cardCategory,
      lightIcon,
      darkIcon,
    ];
  }
}
