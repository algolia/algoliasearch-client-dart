// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'recommendations_hits.g.dart';

@JsonSerializable()
final class RecommendationsHits {
  /// Returns a new [RecommendationsHits] instance.
  const RecommendationsHits({
    required this.hits,
    this.query,
    this.params,
  });

  /// One of types:
  /// - [RecommendHit]
  /// - [TrendingFacetHit]
  @JsonKey(name: r'hits')
  final Iterable<dynamic> hits;

  /// Search query.
  @JsonKey(name: r'query')
  final String? query;

  /// URL-encoded string of all search parameters.
  @JsonKey(name: r'params')
  final String? params;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecommendationsHits &&
          other.hits == hits &&
          other.query == query &&
          other.params == params;

  @override
  int get hashCode => hits.hashCode + query.hashCode + params.hashCode;

  factory RecommendationsHits.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsHitsFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationsHitsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
