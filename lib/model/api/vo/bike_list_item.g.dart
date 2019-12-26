// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bike_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BikeListItem _$BikeListItemFromJson(Map<String, dynamic> json) {
  return BikeListItem(
    (json['result'] as List)
        .map((e) => BikeItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$BikeListItemToJson(BikeListItem instance) =>
    <String, dynamic>{
      'result': instance.bikeItems,
    };
