import 'dart:convert';

import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int? id;
  final String? name;
  final String? image;
  final String? icon;
  final String? mapCharacter;
  final dynamic backgroundImageCard;
  final String? primaryColor;

  const Category({
    this.id,
    this.name,
    this.image,
    this.icon,
    this.mapCharacter,
    this.backgroundImageCard,
    this.primaryColor,
  });

  factory Category.fromMap(Map<String, dynamic> data) => Category(
        id: data['id'] as int?,
        name: data['name'] as String?,
        image: data['image'] as String?,
        icon: data['icon'] as String?,
        mapCharacter: data['map_character'] as String?,
        backgroundImageCard: data['background_image_card'] as dynamic,
        primaryColor: data['primary_color'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'image': image,
        'icon': icon,
        'map_character': mapCharacter,
        'background_image_card': backgroundImageCard,
        'primary_color': primaryColor,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Category].
  factory Category.fromJson(String data) {
    return Category.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Category] to a JSON string.
  String toJson() => json.encode(toMap());

  Category copyWith({
    int? id,
    String? name,
    String? image,
    String? icon,
    String? mapCharacter,
    dynamic backgroundImageCard,
    String? primaryColor,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      icon: icon ?? this.icon,
      mapCharacter: mapCharacter ?? this.mapCharacter,
      backgroundImageCard: backgroundImageCard ?? this.backgroundImageCard,
      primaryColor: primaryColor ?? this.primaryColor,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      image,
      icon,
      mapCharacter,
      backgroundImageCard,
      primaryColor,
    ];
  }
}
