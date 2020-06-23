import 'package:json_annotation/json_annotation.dart';
import 'package:lowkey/models/module.dart';

@JsonSerializable()
class Roommate {
  String name;
  String locationStatus;

  Roommate(this.name, this.locationStatus);

  Roommate.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        locationStatus = json['locationStatus'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'locationStatus': locationStatus,
      };
}

@JsonSerializable()
class Room {
  String roomName;
  String roomLocation;
  List<Roommate> members;
  List<Module> modules;

  Room(this.roomName, this.roomLocation, this.members);

  Room.fromJson(Map<String, dynamic> json)
      : roomName = json['name'],
        roomLocation = json['description'],
        members = json['members'],
        modules = json['modules'];

  Map<String, dynamic> toJson() => {
        'roomName': roomName,
        'roomLocation': roomLocation,
        'members': members,
        'modules': (modules) {
          return modules;
        },
      };
}
