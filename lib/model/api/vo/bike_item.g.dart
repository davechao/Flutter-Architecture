// GENERATED CODE - DO NOT MODIFY BY HAND

part of bikeitem;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BikeItem _$BikeItemFromJson(Map<String, dynamic> json) {
  return BikeItem(
    json['sno'] as String,
    json['sna'] as String,
    json['tot'] as String,
    json['sbi'] as String,
    json['sarea'] as String,
    json['mday'] as String,
    json['lat'] as String,
    json['lng'] as String,
    json['ar'] as String,
    json['sareaen'] as String,
    json['snaen'] as String,
    json['aren'] as String,
    json['bemp'] as String,
    json['act'] as String,
  );
}

Map<String, dynamic> _$BikeItemToJson(BikeItem instance) => <String, dynamic>{
      'sno': instance.sno,
      'sna': instance.sna,
      'tot': instance.tot,
      'sbi': instance.sbi,
      'sarea': instance.sarea,
      'mday': instance.mday,
      'lat': instance.lat,
      'lng': instance.lng,
      'ar': instance.ar,
      'sareaen': instance.sareaen,
      'snaen': instance.snaen,
      'aren': instance.aren,
      'bemp': instance.bemp,
      'act': instance.act,
    };
