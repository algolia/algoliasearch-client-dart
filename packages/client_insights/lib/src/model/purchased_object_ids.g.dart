// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchased_object_ids.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchasedObjectIDs _$PurchasedObjectIDsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PurchasedObjectIDs',
      json,
      ($checkedConvert) {
        final val = PurchasedObjectIDs(
          eventName: $checkedConvert('eventName', (v) => v as String),
          eventType: $checkedConvert(
              'eventType', (v) => $enumDecode(_$ConversionEventEnumMap, v)),
          eventSubtype: $checkedConvert(
              'eventSubtype', (v) => $enumDecode(_$PurchaseEventEnumMap, v)),
          index: $checkedConvert('index', (v) => v as String),
          objectIDs: $checkedConvert('objectIDs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          userToken: $checkedConvert('userToken', (v) => v as String),
          authenticatedUserToken:
              $checkedConvert('authenticatedUserToken', (v) => v as String?),
          currency: $checkedConvert('currency', (v) => v as String?),
          objectData: $checkedConvert(
              'objectData',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ObjectData.fromJson(e as Map<String, dynamic>))
                  .toList()),
          timestamp: $checkedConvert('timestamp', (v) => (v as num?)?.toInt()),
          value: $checkedConvert('value', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$PurchasedObjectIDsToJson(PurchasedObjectIDs instance) =>
    <String, dynamic>{
      'eventName': instance.eventName,
      'eventType': instance.eventType.toJson(),
      'eventSubtype': instance.eventSubtype.toJson(),
      'index': instance.index,
      'objectIDs': instance.objectIDs,
      'userToken': instance.userToken,
      if (instance.authenticatedUserToken case final value?)
        'authenticatedUserToken': value,
      if (instance.currency case final value?) 'currency': value,
      if (instance.objectData?.map((e) => e.toJson()).toList()
          case final value?)
        'objectData': value,
      if (instance.timestamp case final value?) 'timestamp': value,
      if (instance.value case final value?) 'value': value,
    };

const _$ConversionEventEnumMap = {
  ConversionEvent.conversion: 'conversion',
};

const _$PurchaseEventEnumMap = {
  PurchaseEvent.purchase: 'purchase',
};
