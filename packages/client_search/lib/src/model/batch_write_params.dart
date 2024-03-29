// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/batch_request.dart';

import 'package:json_annotation/json_annotation.dart';

part 'batch_write_params.g.dart';

@JsonSerializable()
final class BatchWriteParams {
  /// Returns a new [BatchWriteParams] instance.
  const BatchWriteParams({
    required this.requests,
  });

  @JsonKey(name: r'requests')
  final List<BatchRequest> requests;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchWriteParams && other.requests == requests;

  @override
  int get hashCode => requests.hashCode;

  factory BatchWriteParams.fromJson(Map<String, dynamic> json) =>
      _$BatchWriteParamsFromJson(json);

  Map<String, dynamic> toJson() => _$BatchWriteParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
