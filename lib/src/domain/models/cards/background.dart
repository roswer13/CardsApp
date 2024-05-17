import 'dart:convert';

import 'package:equatable/equatable.dart';

class Background extends Equatable {
  final String? color;
  final String? image;

  const Background({this.color, this.image});

  factory Background.fromMap(Map<String, dynamic> data) => Background(
        color: data['color'] as String?,
        image: data['image'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'color': color,
        'image': image,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Background].
  factory Background.fromJson(String data) {
    return Background.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Background] to a JSON string.
  String toJson() => json.encode(toMap());

  Background copyWith({
    String? color,
    String? image,
  }) {
    return Background(
      color: color ?? this.color,
      image: image ?? this.image,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [color, image];
}
