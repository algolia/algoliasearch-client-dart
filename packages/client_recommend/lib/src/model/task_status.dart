// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Task status, `published` if the task is completed, `notPublished` otherwise.
@JsonEnum(valueField: 'raw')
enum TaskStatus {
  published(r'published'),
  notPublished(r'notPublished');

  const TaskStatus(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static TaskStatus fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}
