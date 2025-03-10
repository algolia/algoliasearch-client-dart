// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converted_object_ids_after_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConvertedObjectIDsAfterSearch _$ConvertedObjectIDsAfterSearchFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ConvertedObjectIDsAfterSearch',
      json,
      ($checkedConvert) {
        final val = ConvertedObjectIDsAfterSearch(
          eventName: $checkedConvert('eventName', (v) => v as String),
          eventType: $checkedConvert(
              'eventType', (v) => $enumDecode(_$ConversionEventEnumMap, v)),
          index: $checkedConvert('index', (v) => v as String),
          objectIDs: $checkedConvert('objectIDs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          queryID: $checkedConvert('queryID', (v) => v as String),
          userToken: $checkedConvert('userToken', (v) => v as String),
          authenticatedUserToken:
              $checkedConvert('authenticatedUserToken', (v) => v as String?),
          timestamp: $checkedConvert('timestamp', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ConvertedObjectIDsAfterSearchToJson(
        ConvertedObjectIDsAfterSearch instance) =>
    <String, dynamic>{
      'eventName': instance.eventName,
      'eventType': instance.eventType.toJson(),
      'index': instance.index,
      'objectIDs': instance.objectIDs,
      'queryID': instance.queryID,
      'userToken': instance.userToken,
      if (instance.authenticatedUserToken case final value?)
        'authenticatedUserToken': value,
      if (instance.timestamp case final value?) 'timestamp': value,
    };

const _$ConversionEventEnumMap = {
  ConversionEvent.conversion: 'conversion',
};
