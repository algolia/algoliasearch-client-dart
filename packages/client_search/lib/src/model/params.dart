// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/rendering_content.dart';

import 'package:json_annotation/json_annotation.dart';

part 'params.g.dart';

@JsonSerializable()
final class Params {
  /// Returns a new [Params] instance.
  const Params({
    this.query,
    this.automaticFacetFilters,
    this.automaticOptionalFacetFilters,
    this.renderingContent,
  });

  /// One of types:
  /// - [ConsequenceQueryObject]
  /// - [String]
  @JsonKey(name: r'query')
  final dynamic query;

  /// One of types:
  /// - [List<AutomaticFacetFilter>]
  /// - [List<String>]
  @JsonKey(name: r'automaticFacetFilters')
  final dynamic automaticFacetFilters;

  /// One of types:
  /// - [List<AutomaticFacetFilter>]
  /// - [List<String>]
  @JsonKey(name: r'automaticOptionalFacetFilters')
  final dynamic automaticOptionalFacetFilters;

  @JsonKey(name: r'renderingContent')
  final RenderingContent? renderingContent;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Params &&
          other.query == query &&
          other.automaticFacetFilters == automaticFacetFilters &&
          other.automaticOptionalFacetFilters ==
              automaticOptionalFacetFilters &&
          other.renderingContent == renderingContent;

  @override
  int get hashCode =>
      query.hashCode +
      automaticFacetFilters.hashCode +
      automaticOptionalFacetFilters.hashCode +
      renderingContent.hashCode;

  factory Params.fromJson(Map<String, dynamic> json) => _$ParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
