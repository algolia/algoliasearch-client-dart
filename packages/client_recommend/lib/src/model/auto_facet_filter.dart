// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'auto_facet_filter.g.dart';

@JsonSerializable()
final class AutoFacetFilter {
  /// Returns a new [AutoFacetFilter] instance.
  const AutoFacetFilter({
    this.facet,
    this.negative,
  });

  /// Facet attribute.
  @JsonKey(name: r'facet')
  final String? facet;

  /// Whether the filter is negative. If true, recommendations must not have the same value for the `facet` attribute. If false, recommendations must have the same value for the `facet` attribute.
  @JsonKey(name: r'negative')
  final bool? negative;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AutoFacetFilter &&
          other.facet == facet &&
          other.negative == negative;

  @override
  int get hashCode => facet.hashCode + negative.hashCode;

  factory AutoFacetFilter.fromJson(Map<String, dynamic> json) =>
      _$AutoFacetFilterFromJson(json);

  Map<String, dynamic> toJson() => _$AutoFacetFilterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
