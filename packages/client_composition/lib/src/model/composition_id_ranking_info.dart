// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'composition_id_ranking_info.g.dart';

@JsonSerializable()
final class CompositionIdRankingInfo {
  /// Returns a new [CompositionIdRankingInfo] instance.
  const CompositionIdRankingInfo({
    required this.index,
    required this.injectedItemKey,
  });

  @JsonKey(name: r'index')
  final String index;

  @JsonKey(name: r'injectedItemKey')
  final String injectedItemKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompositionIdRankingInfo &&
          other.index == index &&
          other.injectedItemKey == injectedItemKey;

  @override
  int get hashCode => index.hashCode + injectedItemKey.hashCode;

  factory CompositionIdRankingInfo.fromJson(Map<String, dynamic> json) =>
      _$CompositionIdRankingInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CompositionIdRankingInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}