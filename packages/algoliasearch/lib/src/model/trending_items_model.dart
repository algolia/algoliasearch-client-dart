// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Trending items model.  Trending items are determined from the number of conversion events collected on them.
@JsonEnum(valueField: 'raw')
enum TrendingItemsModel {
  trendingItems(r'trending-items');

  const TrendingItemsModel(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static TrendingItemsModel fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}