// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// - `min`. Return matches with the lowest number of typos.   For example, if you have matches without typos, only include those.   But if there are no matches without typos (with 1 typo), include matches with 1 typo (2 typos). - `strict`. Return matches with the two lowest numbers of typos.   With `strict`, the Typo ranking criterion is applied first in the `ranking` setting.
@JsonEnum(valueField: 'raw')
enum TypoToleranceEnum {
  min(r'min'),
  strict(r'strict'),
  true_(r'true'),
  false_(r'false');

  const TypoToleranceEnum(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static TypoToleranceEnum fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}
