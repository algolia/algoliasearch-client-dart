// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_recommend/src/model/trending_facets_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'trending_facets_query.g.dart';

@JsonSerializable()
final class TrendingFacetsQuery {
  /// Returns a new [TrendingFacetsQuery] instance.
  const TrendingFacetsQuery({
    required this.indexName,
    this.threshold,
    this.maxRecommendations,
    required this.facetName,
    this.model,
  });

  /// Index name.
  @JsonKey(name: r'indexName')
  final String indexName;

  /// Recommendations with a confidence score lower than `threshold` won't appear in results. > **Note**: Each recommendation has a confidence score of 0 to 100. The closer the score is to 100, the more relevant the recommendations are.
  // minimum: 0
  // maximum: 100
  @JsonKey(name: r'threshold')
  final int? threshold;

  /// Maximum number of recommendations to retrieve. If 0, all recommendations will be returned.
  @JsonKey(name: r'maxRecommendations')
  final int? maxRecommendations;

  /// Facet name for trending models.
  @JsonKey(name: r'facetName')
  final String facetName;

  @JsonKey(name: r'model')
  final TrendingFacetsModel? model;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrendingFacetsQuery &&
          other.indexName == indexName &&
          other.threshold == threshold &&
          other.maxRecommendations == maxRecommendations &&
          other.facetName == facetName &&
          other.model == model;

  @override
  int get hashCode =>
      indexName.hashCode +
      threshold.hashCode +
      maxRecommendations.hashCode +
      facetName.hashCode +
      model.hashCode;

  factory TrendingFacetsQuery.fromJson(Map<String, dynamic> json) =>
      _$TrendingFacetsQueryFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingFacetsQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
