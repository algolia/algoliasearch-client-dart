// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algoliasearch/src/model/acl.dart';

import 'package:json_annotation/json_annotation.dart';

part 'get_api_key_response.g.dart';

@JsonSerializable()
final class GetApiKeyResponse {
  /// Returns a new [GetApiKeyResponse] instance.
  const GetApiKeyResponse({
    this.value,
    required this.createdAt,
    required this.acl,
    this.description,
    this.indexes,
    this.maxHitsPerQuery,
    this.maxQueriesPerIPPerHour,
    this.queryParameters,
    this.referers,
    this.validity,
  });

  /// API key.
  @JsonKey(name: r'value')
  final String? value;

  /// Timestamp of creation in milliseconds in [Unix epoch time](https://wikipedia.org/wiki/Unix_time).
  @JsonKey(name: r'createdAt')
  final int createdAt;

  /// Permissions that determine the type of API requests this key can make. The required ACL is listed in each endpoint's reference. For more information, see [access control list](https://www.algolia.com/doc/guides/security/api-keys/#access-control-list-acl).
  @JsonKey(name: r'acl')
  final List<Acl> acl;

  /// Description of an API key to help you identify this API key.
  @JsonKey(name: r'description')
  final String? description;

  /// Index names or patterns that this API key can access. By default, an API key can access all indices in the same application.  You can use leading and trailing wildcard characters (`*`):  - `dev_*` matches all indices starting with \"dev_\". - `*_dev` matches all indices ending with \"_dev\". - `*_products_*` matches all indices containing \"_products_\".
  @JsonKey(name: r'indexes')
  final List<String>? indexes;

  /// Maximum number of results this API key can retrieve in one query. By default, there's no limit.
  @JsonKey(name: r'maxHitsPerQuery')
  final int? maxHitsPerQuery;

  /// Maximum number of API requests allowed per IP address or [user token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/) per hour.  If this limit is reached, the API returns an error with status code `429`. By default, there's no limit.
  @JsonKey(name: r'maxQueriesPerIPPerHour')
  final int? maxQueriesPerIPPerHour;

  /// Query parameters to add when making API requests with this API key.  To restrict this API key to specific IP addresses, add the `restrictSources` parameter. You can only add a single source, but you can provide a range of IP addresses.  Creating an API key fails if the request is made from an IP address that's outside the restricted range.
  @JsonKey(name: r'queryParameters')
  final String? queryParameters;

  /// Allowed HTTP referrers for this API key.  By default, all referrers are allowed. You can use leading and trailing wildcard characters (`*`):  - `https://algolia.com/_*` allows all referrers starting with \"https://algolia.com/\" - `*.algolia.com` allows all referrers ending with \".algolia.com\" - `*algolia.com*` allows all referrers in the domain \"algolia.com\".  Like all HTTP headers, referrers can be spoofed. Don't rely on them to secure your data. For more information, see [HTTP referrer restrictions](https://www.algolia.com/doc/guides/security/security-best-practices/#http-referrers-restrictions).
  @JsonKey(name: r'referers')
  final List<String>? referers;

  /// Duration (in seconds) after which the API key expires. By default, API keys don't expire.
  @JsonKey(name: r'validity')
  final int? validity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetApiKeyResponse &&
          other.value == value &&
          other.createdAt == createdAt &&
          other.acl == acl &&
          other.description == description &&
          other.indexes == indexes &&
          other.maxHitsPerQuery == maxHitsPerQuery &&
          other.maxQueriesPerIPPerHour == maxQueriesPerIPPerHour &&
          other.queryParameters == queryParameters &&
          other.referers == referers &&
          other.validity == validity;

  @override
  int get hashCode =>
      value.hashCode +
      createdAt.hashCode +
      acl.hashCode +
      description.hashCode +
      indexes.hashCode +
      maxHitsPerQuery.hashCode +
      maxQueriesPerIPPerHour.hashCode +
      queryParameters.hashCode +
      referers.hashCode +
      validity.hashCode;

  factory GetApiKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$GetApiKeyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetApiKeyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
