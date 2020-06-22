import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ShopModule {
  String name;
  String description;
  String icon;

  ShopModule(this.name, this.description, this.icon);
}
