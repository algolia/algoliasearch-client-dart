// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_composition/src/model/compositions_search_response.dart';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'composition_base_search_response.g.dart';

@JsonSerializable(createFieldMap: true)
final class CompositionBaseSearchResponse
    extends DelegatingMap<String, dynamic> {
  /// Returns a new [CompositionBaseSearchResponse] instance.
  const CompositionBaseSearchResponse({
    this.compositions,
    Map<String, dynamic> additionalProperties = const {},
  }) : super(additionalProperties);

  @JsonKey(name: r'compositions')
  final CompositionsSearchResponse? compositions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompositionBaseSearchResponse &&
          other.compositions == compositions &&
          const MapEquality<String, dynamic>().equals(this, this);

  @override
  int get hashCode =>
      compositions.hashCode + const MapEquality<String, dynamic>().hash(this);

  factory CompositionBaseSearchResponse.fromJson(Map<String, dynamic> json) {
    final instance = _$CompositionBaseSearchResponseFromJson(json);
    final additionalProperties = Map<String, dynamic>.from(json)
      ..removeWhere((key, value) =>
          _$CompositionBaseSearchResponseFieldMap.containsKey(key));
    return CompositionBaseSearchResponse(
      compositions: instance.compositions,
      additionalProperties: additionalProperties,
    );
  }

  Map<String, dynamic> toJson() =>
      _$CompositionBaseSearchResponseToJson(this)..addAll(this);

  @override
  String toString() {
    return toJson().toString();
  }
}