// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrowsePagination _$BrowsePaginationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BrowsePagination',
      json,
      ($checkedConvert) {
        final val = BrowsePagination(
          page: $checkedConvert('page', (v) => v as int?),
          nbHits: $checkedConvert('nbHits', (v) => v as int?),
          nbPages: $checkedConvert('nbPages', (v) => v as int?),
          hitsPerPage: $checkedConvert('hitsPerPage', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$BrowsePaginationToJson(BrowsePagination instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('nbHits', instance.nbHits);
  writeNotNull('nbPages', instance.nbPages);
  writeNotNull('hitsPerPage', instance.hitsPerPage);
  return val;
}
