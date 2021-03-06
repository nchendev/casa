class ModuleInfo {
  String id;
  String name;

  ModuleInfo(this.id, this.name);

  ModuleInfo.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}

class Module {
  String name;
  String description;
  String icon;

  String type;
  Map<String, dynamic>
      moduleData; // might need to make a separate model for moduleData later

  Module(this.name, this.description, this.icon, this.type, this.moduleData);

  Module.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        description = json['description'],
        icon = json['icon'],
        type = json['type'],
        moduleData = json['moduleData'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'icon': icon,
        'type': type,
        'moduleData': moduleData,
      };
}
