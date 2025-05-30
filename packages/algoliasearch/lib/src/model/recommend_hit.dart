// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algoliasearch/src/model/ranking_info.dart';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recommend_hit.g.dart';

@JsonSerializable(createFieldMap: true)
final class RecommendHit extends DelegatingMap<String, dynamic> {
  /// Returns a new [RecommendHit] instance.
  const RecommendHit({
    required this.objectID,
    this.highlightResult,
    this.snippetResult,
    this.rankingInfo,
    this.distinctSeqID,
    this.score,
    Map<String, dynamic> additionalProperties = const {},
  }) : super(additionalProperties);

  /// Unique record identifier.
  @JsonKey(name: r'objectID')
  final String objectID;

  /// Surround words that match the query with HTML tags for highlighting.
  @JsonKey(name: r'_highlightResult')
  final Map<String, dynamic>? highlightResult;

  /// Snippets that show the context around a matching search query.
  @JsonKey(name: r'_snippetResult')
  final Map<String, dynamic>? snippetResult;

  @JsonKey(name: r'_rankingInfo')
  final RankingInfo? rankingInfo;

  @JsonKey(name: r'_distinctSeqID')
  final int? distinctSeqID;

  /// Recommendation score.
  // minimum: 0
  // maximum: 100
  @JsonKey(name: r'_score')
  final double? score;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecommendHit &&
          other.objectID == objectID &&
          other.highlightResult == highlightResult &&
          other.snippetResult == snippetResult &&
          other.rankingInfo == rankingInfo &&
          other.distinctSeqID == distinctSeqID &&
          other.score == score &&
          const MapEquality<String, dynamic>().equals(this, this);

  @override
  int get hashCode =>
      objectID.hashCode +
      highlightResult.hashCode +
      snippetResult.hashCode +
      rankingInfo.hashCode +
      distinctSeqID.hashCode +
      score.hashCode +
      const MapEquality<String, dynamic>().hash(this);

  factory RecommendHit.fromJson(Map<String, dynamic> json) {
    final instance = _$RecommendHitFromJson(json);
    final additionalProperties = Map<String, dynamic>.from(json)
      ..removeWhere((key, value) => _$RecommendHitFieldMap.containsKey(key));
    return RecommendHit(
      objectID: instance.objectID,
      highlightResult: instance.highlightResult,
      snippetResult: instance.snippetResult,
      rankingInfo: instance.rankingInfo,
      distinctSeqID: instance.distinctSeqID,
      score: instance.score,
      additionalProperties: additionalProperties,
    );
  }

  Map<String, dynamic> toJson() => _$RecommendHitToJson(this)..addAll(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
