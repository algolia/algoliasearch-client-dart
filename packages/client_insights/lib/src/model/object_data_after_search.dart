// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'object_data_after_search.g.dart';

@JsonSerializable()
final class ObjectDataAfterSearch {
  /// Returns a new [ObjectDataAfterSearch] instance.
  const ObjectDataAfterSearch({
    this.queryID,
    this.price,
    this.quantity,
    this.discount,
  });

  /// Unique identifier for a search query, used to track purchase events with multiple records that originate from different searches.
  @JsonKey(name: r'queryID')
  final String? queryID;

  /// One of types:
  /// - [double]
  /// - [String]
  @JsonKey(name: r'price')
  final dynamic price;

  /// Quantity of a product that has been purchased or added to the cart. The total purchase value is the sum of `quantity` multiplied with the `price` for each purchased item.
  @JsonKey(name: r'quantity')
  final int? quantity;

  /// One of types:
  /// - [double]
  /// - [String]
  @JsonKey(name: r'discount')
  final dynamic discount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ObjectDataAfterSearch &&
          other.queryID == queryID &&
          other.price == price &&
          other.quantity == quantity &&
          other.discount == discount;

  @override
  int get hashCode =>
      queryID.hashCode + price.hashCode + quantity.hashCode + discount.hashCode;

  factory ObjectDataAfterSearch.fromJson(Map<String, dynamic> json) =>
      _$ObjectDataAfterSearchFromJson(json);

  Map<String, dynamic> toJson() => _$ObjectDataAfterSearchToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
