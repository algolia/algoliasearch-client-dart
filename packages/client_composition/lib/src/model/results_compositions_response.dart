// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_composition/src/model/results_composition_info_response.dart';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'results_compositions_response.g.dart';

@JsonSerializable(createFieldMap: true)
final class ResultsCompositionsResponse extends DelegatingMap<String, dynamic> {
  /// Returns a new [ResultsCompositionsResponse] instance.
  const ResultsCompositionsResponse({
    required this.compositions,
    Map<String, dynamic> additionalProperties = const {},
  }) : super(additionalProperties);

  @JsonKey(name: r'compositions')
  final Map<String, ResultsCompositionInfoResponse> compositions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ResultsCompositionsResponse &&
          other.compositions == compositions &&
          const MapEquality<String, dynamic>().equals(this, this);

  @override
  int get hashCode =>
      compositions.hashCode + const MapEquality<String, dynamic>().hash(this);

  factory ResultsCompositionsResponse.fromJson(Map<String, dynamic> json) {
    final instance = _$ResultsCompositionsResponseFromJson(json);
    final additionalProperties = Map<String, dynamic>.from(json)
      ..removeWhere((key, value) =>
          _$ResultsCompositionsResponseFieldMap.containsKey(key));
    return ResultsCompositionsResponse(
      compositions: instance.compositions,
      additionalProperties: additionalProperties,
    );
  }

  Map<String, dynamic> toJson() =>
      _$ResultsCompositionsResponseToJson(this)..addAll(this);

  @override
  String toString() {
    return toJson().toString();
  }
}