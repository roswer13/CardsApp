import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'result.dart';

class Cards extends Equatable {
  final int? count;
  final dynamic next;
  final dynamic previous;
  final List<Result>? results;

  const Cards({this.count, this.next, this.previous, this.results});

  factory Cards.fromMap(Map<String, dynamic> data) => Cards(
        count: data['count'] as int?,
        next: data['next'] as dynamic,
        previous: data['previous'] as dynamic,
        results: (data['results'] as List<dynamic>?)
            ?.map((e) => Result.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'count': count,
        'next': next,
        'previous': previous,
        'results': results?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Cards].
  factory Cards.fromJson(String data) {
    return Cards.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Cards] to a JSON string.
  String toJson() => json.encode(toMap());

  Cards copyWith({
    int? count,
    dynamic next,
    dynamic previous,
    List<Result>? results,
  }) {
    return Cards(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [count, next, previous, results];
}
