// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Event',
      json,
      ($checkedConvert) {
        final val = Event(
          eventID: $checkedConvert('eventID', (v) => v as String),
          runID: $checkedConvert('runID', (v) => v as String),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$EventStatusEnumMap, v)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$EventTypeEnumMap, v)),
          batchSize: $checkedConvert('batchSize', (v) => (v as num).toInt()),
          data: $checkedConvert(
              'data',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
          publishedAt: $checkedConvert('publishedAt', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'eventID': instance.eventID,
      'runID': instance.runID,
      if (instance.status?.toJson() case final value?) 'status': value,
      'type': instance.type.toJson(),
      'batchSize': instance.batchSize,
      if (instance.data case final value?) 'data': value,
      'publishedAt': instance.publishedAt,
    };

const _$EventStatusEnumMap = {
  EventStatus.created: 'created',
  EventStatus.started: 'started',
  EventStatus.retried: 'retried',
  EventStatus.failed: 'failed',
  EventStatus.succeeded: 'succeeded',
  EventStatus.critical: 'critical',
};

const _$EventTypeEnumMap = {
  EventType.fetch: 'fetch',
  EventType.record: 'record',
  EventType.log: 'log',
  EventType.transform: 'transform',
};
