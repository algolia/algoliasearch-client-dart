// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/facet_hits.dart';

import 'package:json_annotation/json_annotation.dart';

part 'search_for_facet_values_response.g.dart';

@JsonSerializable()
final class SearchForFacetValuesResponse {
  /// Returns a new [SearchForFacetValuesResponse] instance.
  const SearchForFacetValuesResponse({
    required this.facetHits,
    required this.exhaustiveFacetsCount,
    this.processingTimeMS,
  });

  /// Matching facet values.
  @JsonKey(name: r'facetHits')
  final List<FacetHits> facetHits;

  /// See the `facetsCount` field of the `exhaustive` object in the response.
  @Deprecated('exhaustiveFacetsCount has been deprecated')
  @JsonKey(name: r'exhaustiveFacetsCount')
  final bool exhaustiveFacetsCount;

  /// Time the server took to process the request, in milliseconds.
  @JsonKey(name: r'processingTimeMS')
  final int? processingTimeMS;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchForFacetValuesResponse &&
          other.facetHits == facetHits &&
          other.processingTimeMS == processingTimeMS;

  @override
  int get hashCode => facetHits.hashCode + processingTimeMS.hashCode;

  factory SearchForFacetValuesResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchForFacetValuesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchForFacetValuesResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
