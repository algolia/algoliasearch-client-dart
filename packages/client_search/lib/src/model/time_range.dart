// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'time_range.g.dart';

@JsonSerializable()
final class TimeRange {
  /// Returns a new [TimeRange] instance.
  const TimeRange({
    this.from,
    this.until,
  });

  /// When the rule should start to be active, in Unix epoch time.
  @JsonKey(name: r'from')
  final int? from;

  /// When the rule should stop to be active, in Unix epoch time.
  @JsonKey(name: r'until')
  final int? until;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeRange && other.from == from && other.until == until;

  @override
  int get hashCode => from.hashCode + until.hashCode;

  factory TimeRange.fromJson(Map<String, dynamic> json) =>
      _$TimeRangeFromJson(json);

  Map<String, dynamic> toJson() => _$TimeRangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
