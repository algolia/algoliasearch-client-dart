# Chopper Requester for Algolia Search Client

## 💡 Installation

Add Algolia Client Core as a dependency in your project directly from pub.dev:

#### For Dart projects:

```shell
dart pub add algolia_chopper_requester
```

#### For Flutter projects:

```shell
flutter pub add algolia_chopper_requester
```

### Basic Usage

```dart
final String appId = 'latency';
final String apiKey = '6be0576ff61c053d5f9a3225e2a90f76';

final SearchClient _client = SearchClient(
  appId: appId,
  apiKey: apiKey,
  options: ClientOptions(
    connectTimeout: const Duration(seconds: 30),
    requester: ChopperRequester(
      appId: appId,
      apiKey: apiKey,
    )
  ),
);

Future<SearchResponse> search(String query) => _client.searchIndex(
      request: SearchForHits(
        indexName: 'flutter',
        query: query,
        hitsPerPage: 5,
      ),
    );
```

You can configure the `ChopperRequester` with the following parameters:

```dart
final requester = ChopperRequester({
  /// Your Algolia Application ID
  required String appId,
  /// Your Algolia Search-Only API Key
  required String apiKey,
  /// Additional headers to send with the request
  Map<String, dynamic>? headers,
  /// The duration to wait before timing out the request
  Duration? connectTimeout,
  /// The segments to include in the `User-Agent` header
  Iterable<AgentSegment>? clientSegments,
  /// The logger to use for debugging
  Logger? logger,
  /// The Chopper Interceptors to use for modifying the request
  Iterable<Interceptor>? interceptors,
  /// The HTTP client to use for sending requests
  Client? client
});
```

## License

Chopper Requester for Algolia Search Client is an open-sourced software licensed under the [MIT license](LICENSE).
