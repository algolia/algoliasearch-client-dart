// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_insights/src/model/view_event.dart';

import 'package:json_annotation/json_annotation.dart';

part 'viewed_filters.g.dart';

@JsonSerializable()
final class ViewedFilters {
  /// Returns a new [ViewedFilters] instance.
  const ViewedFilters({
    required this.eventName,
    required this.eventType,
    required this.index,
    required this.filters,
    required this.userToken,
    this.authenticatedUserToken,
    this.timestamp,
  });

  /// Event name, up to 64 ASCII characters.  Consider naming events consistently—for example, by adopting Segment's [object-action](https://segment.com/academy/collecting-data/naming-conventions-for-clean-data/#the-object-action-framework) framework.
  @JsonKey(name: r'eventName')
  final String eventName;

  @JsonKey(name: r'eventType')
  final ViewEvent eventType;

  /// Index name (case-sensitive) to which the event's items belong.
  @JsonKey(name: r'index')
  final String index;

  /// Applied facet filters.  Facet filters are `facet:value` pairs. Facet values must be URL-encoded, such as, `discount:10%25`.
  @JsonKey(name: r'filters')
  final List<String> filters;

  /// Anonymous or pseudonymous user identifier.  Don't use personally identifiable information in user tokens. For more information, see [User token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
  @JsonKey(name: r'userToken')
  final String userToken;

  /// Identifier for authenticated users.  When the user signs in, you can get an identifier from your system and send it as `authenticatedUserToken`. This lets you keep using the `userToken` from before the user signed in, while providing a reliable way to identify users across sessions. Don't use personally identifiable information in user tokens. For more information, see [User token](https://www.algolia.com/doc/guides/sending-events/concepts/usertoken/).
  @JsonKey(name: r'authenticatedUserToken')
  final String? authenticatedUserToken;

  /// Timestamp of the event, measured in milliseconds since the Unix epoch. By default, the Insights API uses the time it receives an event as its timestamp.
  @JsonKey(name: r'timestamp')
  final int? timestamp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ViewedFilters &&
          other.eventName == eventName &&
          other.eventType == eventType &&
          other.index == index &&
          other.filters == filters &&
          other.userToken == userToken &&
          other.authenticatedUserToken == authenticatedUserToken &&
          other.timestamp == timestamp;

  @override
  int get hashCode =>
      eventName.hashCode +
      eventType.hashCode +
      index.hashCode +
      filters.hashCode +
      userToken.hashCode +
      authenticatedUserToken.hashCode +
      timestamp.hashCode;

  factory ViewedFilters.fromJson(Map<String, dynamic> json) =>
      _$ViewedFiltersFromJson(json);

  Map<String, dynamic> toJson() => _$ViewedFiltersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
