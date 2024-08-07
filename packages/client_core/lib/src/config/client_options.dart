import 'dart:core';

import 'package:algolia_client_core/src/config/agent_segment.dart';
import 'package:algolia_client_core/src/config/host.dart';
import 'package:algolia_client_core/src/transport/requester.dart';
import 'package:dio/dio.dart';

final class ClientOptions {
  /// The list of hosts that the client can connect to.
  final Iterable<Host>? hosts;

  /// The maximum duration to wait for a connection to establish before timing out.
  final Duration connectTimeout;

  /// The maximum duration to wait for a write operation to complete before timing out.
  final Duration writeTimeout;

  /// The maximum duration to wait for a read operation to complete before timing out.
  final Duration readTimeout;

  /// Default headers to include in each HTTP request.
  final Map<String, dynamic>? headers;

  /// List of agent segments for the Algolia service.
  final Iterable<AgentSegment>? agentSegments;

  /// Custom logger for http operations.
  final Function(Object?)? logger;

  /// Custom requester used to send HTTP requests.
  final Requester? requester;

  /// List of Dio interceptors.
  /// Used only in case of using the default (dio) requester.
  final Iterable<Interceptor>? interceptors;

  /// Custom [HttpClientAdapter] used to send HTTP requests.
  /// Used only in case of using the default (dio) requester.
  final HttpClientAdapter? httpClientAdapter;

  /// Constructs a [ClientOptions] instance with the provided parameters.
  const ClientOptions({
    this.connectTimeout = const Duration(seconds: 2),
    this.writeTimeout = const Duration(seconds: 30),
    this.readTimeout = const Duration(seconds: 5),
    this.hosts,
    this.headers,
    this.agentSegments,
    this.requester,
    this.logger,
    this.interceptors,
    this.httpClientAdapter,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientOptions &&
          runtimeType == other.runtimeType &&
          hosts == other.hosts &&
          connectTimeout == other.connectTimeout &&
          writeTimeout == other.writeTimeout &&
          readTimeout == other.readTimeout &&
          headers == other.headers &&
          agentSegments == other.agentSegments &&
          logger == other.logger &&
          requester == other.requester &&
          interceptors == other.interceptors &&
          httpClientAdapter == other.httpClientAdapter;

  @override
  int get hashCode =>
      hosts.hashCode ^
      connectTimeout.hashCode ^
      writeTimeout.hashCode ^
      readTimeout.hashCode ^
      headers.hashCode ^
      agentSegments.hashCode ^
      logger.hashCode ^
      requester.hashCode ^
      interceptors.hashCode ^
      httpClientAdapter.hashCode;

  @override
  String toString() {
    return 'ClientOptions{hosts: $hosts, connectTimeout: $connectTimeout, writeTimeout: $writeTimeout, readTimeout: $readTimeout, headers: $headers, agentSegments: $agentSegments, logger: $logger, requester: $requester, interceptors: $interceptors, httpClientAdapter: $httpClientAdapter}';
  }
}
