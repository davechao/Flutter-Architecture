library bikeitem;

import 'package:json_annotation/json_annotation.dart';

part 'bike_item.g.dart';

@JsonSerializable(nullable: false)
class BikeItem {
  @JsonKey(name: "sno")
  final String sno;

  @JsonKey(name: "sna")
  final String sna;

  @JsonKey(name: "tot")
  final String tot;

  @JsonKey(name: "sbi")
  final String sbi;

  @JsonKey(name: "sarea")
  final String sarea;

  @JsonKey(name: "mday")
  final String mday;

  @JsonKey(name: "lat")
  final String lat;

  @JsonKey(name: "lng")
  final String lng;

  @JsonKey(name: "ar")
  final String ar;

  @JsonKey(name: "sareaen")
  final String sareaen;

  @JsonKey(name: "snaen")
  final String snaen;

  @JsonKey(name: "aren")
  final String aren;

  @JsonKey(name: "bemp")
  final String bemp;

  @JsonKey(name: "act")
  final String act;

  BikeItem(
      this.sno,
      this.sna,
      this.tot,
      this.sbi,
      this.sarea,
      this.mday,
      this.lat,
      this.lng,
      this.ar,
      this.sareaen,
      this.snaen,
      this.aren,
      this.bemp,
      this.act,
      );

  factory BikeItem.fromJson(Map<String, dynamic> json) =>
      _$BikeItemFromJson(json);

  Map<String, dynamic> toJson(BikeItem instance) => _$BikeItemToJson(instance);
}

// flutter packages pub run build_runner build
