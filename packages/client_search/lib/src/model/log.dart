// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/log_query.dart';

import 'package:json_annotation/json_annotation.dart';

part 'log.g.dart';

@JsonSerializable()
final class Log {
  /// Returns a new [Log] instance.
  const Log({
    required this.timestamp,
    required this.method,
    required this.answerCode,
    required this.queryBody,
    required this.answer,
    required this.url,
    required this.ip,
    required this.queryHeaders,
    required this.sha1,
    required this.nbApiCalls,
    required this.processingTimeMs,
    this.index,
    this.queryParams,
    this.queryNbHits,
    this.innerQueries,
  });

  /// Timestamp of the API request in ISO 8601 format.
  @JsonKey(name: r'timestamp')
  final String timestamp;

  /// HTTP method of the request.
  @JsonKey(name: r'method')
  final String method;

  /// HTTP status code of the response.
  @JsonKey(name: r'answer_code')
  final String answerCode;

  /// Request body.
  @JsonKey(name: r'query_body')
  final String queryBody;

  /// Response body.
  @JsonKey(name: r'answer')
  final String answer;

  /// URL of the API endpoint.
  @JsonKey(name: r'url')
  final String url;

  /// IP address of the client that performed the request.
  @JsonKey(name: r'ip')
  final String ip;

  /// Request headers (API keys are obfuscated).
  @JsonKey(name: r'query_headers')
  final String queryHeaders;

  /// SHA1 signature of the log entry.
  @JsonKey(name: r'sha1')
  final String sha1;

  /// Number of API requests.
  @JsonKey(name: r'nb_api_calls')
  final String nbApiCalls;

  /// Processing time for the query in milliseconds. This doesn't include latency due to the network.
  @JsonKey(name: r'processing_time_ms')
  final String processingTimeMs;

  /// Index targeted by the query.
  @JsonKey(name: r'index')
  final String? index;

  /// Query parameters sent with the request.
  @JsonKey(name: r'query_params')
  final String? queryParams;

  /// Number of search results (hits) returned for the query.
  @JsonKey(name: r'query_nb_hits')
  final String? queryNbHits;

  /// Queries performed for the given request.
  @JsonKey(name: r'inner_queries')
  final List<LogQuery>? innerQueries;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Log &&
          other.timestamp == timestamp &&
          other.method == method &&
          other.answerCode == answerCode &&
          other.queryBody == queryBody &&
          other.answer == answer &&
          other.url == url &&
          other.ip == ip &&
          other.queryHeaders == queryHeaders &&
          other.sha1 == sha1 &&
          other.nbApiCalls == nbApiCalls &&
          other.processingTimeMs == processingTimeMs &&
          other.index == index &&
          other.queryParams == queryParams &&
          other.queryNbHits == queryNbHits &&
          other.innerQueries == innerQueries;

  @override
  int get hashCode =>
      timestamp.hashCode +
      method.hashCode +
      answerCode.hashCode +
      queryBody.hashCode +
      answer.hashCode +
      url.hashCode +
      ip.hashCode +
      queryHeaders.hashCode +
      sha1.hashCode +
      nbApiCalls.hashCode +
      processingTimeMs.hashCode +
      index.hashCode +
      queryParams.hashCode +
      queryNbHits.hashCode +
      innerQueries.hashCode;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  Map<String, dynamic> toJson() => _$LogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
