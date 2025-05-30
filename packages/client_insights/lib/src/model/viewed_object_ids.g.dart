// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewed_object_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewedObjectIDs _$ViewedObjectIDsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ViewedObjectIDs',
      json,
      ($checkedConvert) {
        final val = ViewedObjectIDs(
          eventName: $checkedConvert('eventName', (v) => v as String),
          eventType: $checkedConvert(
              'eventType', (v) => $enumDecode(_$ViewEventEnumMap, v)),
          index: $checkedConvert('index', (v) => v as String),
          objectIDs: $checkedConvert('objectIDs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          userToken: $checkedConvert('userToken', (v) => v as String),
          authenticatedUserToken:
              $checkedConvert('authenticatedUserToken', (v) => v as String?),
          timestamp: $checkedConvert('timestamp', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ViewedObjectIDsToJson(ViewedObjectIDs instance) =>
    <String, dynamic>{
      'eventName': instance.eventName,
      'eventType': instance.eventType.toJson(),
      'index': instance.index,
      'objectIDs': instance.objectIDs,
      'userToken': instance.userToken,
      if (instance.authenticatedUserToken case final value?)
        'authenticatedUserToken': value,
      if (instance.timestamp case final value?) 'timestamp': value,
    };

const _$ViewEventEnumMap = {
  ViewEvent.view: 'view',
};
