import 'package:flutter_architecture/model/api/vo/bike_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bike_list_item.g.dart';

@JsonSerializable(nullable: false)
class BikeListItem {
  @JsonKey(name: "result")
  List<BikeItem> bikeItems = new List<BikeItem>();

  BikeListItem(this.bikeItems);

  factory BikeListItem.fromJson(Map<String, dynamic> json) =>
      _$BikeListItemFromJson(json);

  Map<String, dynamic> toJson(BikeListItem instance) =>
      _$BikeListItemToJson(instance);
}

// flutter packages pub run build_runner build