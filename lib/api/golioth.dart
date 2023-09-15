// To parse this JSON data, do
//
//     final golioth = goliothFromJson(jsonString);

import 'dart:convert';

Golioth goliothFromJson(String str) => Golioth.fromJson(json.decode(str));

String goliothToJson(Golioth data) => json.encode(data.toJson());

class Golioth {
  final List<ListElement> list;
  final int page;
  final int perPage;
  final int total;

  Golioth({
    required this.list,
    required this.page,
    required this.perPage,
    required this.total,
  });

  factory Golioth.fromJson(Map<String, dynamic> json) => Golioth(
        list: (json["list"] as List<dynamic>?)
                ?.map((x) => ListElement.fromJson(x))
                .toList() ??
            [],
        page: json["page"] as int? ?? 0,
        perPage: json["perPage"] as int? ?? 0,
        total: json["total"] as int? ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "list": List<dynamic>.from(list.map((x) => x.toJson())),
        "page": page,
        "perPage": perPage,
        "total": total,
      };
}

class ListElement {
  final String id;
  final List<String> hardwareIds;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;
  final List<dynamic> tagIds;
  final dynamic data;
  final dynamic lastReport;
  final String status;
  final Metadata metadata;
  final bool enabled;

  ListElement({
    required this.id,
    required this.hardwareIds,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.tagIds,
    required this.data,
    required this.lastReport,
    required this.status,
    required this.metadata,
    required this.enabled,
  });

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        id: json["id"],
        hardwareIds: List<String>.from(json["hardwareIds"].map((x) => x)),
        name: json["name"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        tagIds: List<dynamic>.from(json["tagIds"].map((x) => x)),
        data: json["data"],
        lastReport: json["lastReport"],
        status: json["status"],
        metadata: Metadata.fromJson(json["metadata"]),
        enabled: json["enabled"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "hardwareIds": List<dynamic>.from(hardwareIds.map((x) => x)),
        "name": name,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "tagIds": List<dynamic>.from(tagIds.map((x) => x)),
        "data": data,
        "lastReport": lastReport,
        "status": status,
        "metadata": metadata.toJson(),
        "enabled": enabled,
      };
}

class Metadata {
  final Update update;
  final String status;
  final dynamic lastReport;
  final dynamic lastSeenOnline;
  final dynamic lastSeenOffline;
  final dynamic lastSettingsStatus;

  Metadata({
    required this.update,
    required this.status,
    required this.lastReport,
    required this.lastSeenOnline,
    required this.lastSeenOffline,
    required this.lastSettingsStatus,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        update: Update.fromJson(json["update"]),
        status: json["status"],
        lastReport: json["lastReport"],
        lastSeenOnline: json["lastSeenOnline"],
        lastSeenOffline: json["lastSeenOffline"],
        lastSettingsStatus: json["lastSettingsStatus"],
      );

  Map<String, dynamic> toJson() => {
        "update": update.toJson(),
        "status": status,
        "lastReport": lastReport,
        "lastSeenOnline": lastSeenOnline,
        "lastSeenOffline": lastSeenOffline,
        "lastSettingsStatus": lastSettingsStatus,
      };
}

class Update {
  Update();

  factory Update.fromJson(Map<String, dynamic> json) => Update();

  Map<String, dynamic> toJson() => {};
}
