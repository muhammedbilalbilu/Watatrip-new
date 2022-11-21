import 'dart:convert';

Apidata apidataFromJson(String str) => Apidata.fromJson(json.decode(str));

class Apidata {
  Apidata({
    required this.id,
    required this.name,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.image5,
    required this.logo,
    required this.address,
    required this.contactNumber,
    required this.fb,
    required this.details,
    required this.mapLink,
    required this.createdAt,
    required this.updatedAt,
    required this.activityTypeId,
  });

  String id;
  String name;
  String image1;
  String image2;
  String image3;
  String image4;
  String image5;
  String logo;
  String address;
  String contactNumber;
  String fb;
  String details;
  String mapLink;
  DateTime createdAt;
  String updatedAt;
  String activityTypeId;

  factory Apidata.fromJson(Map<String, dynamic> json) => Apidata(
        id: json["id"],
        name: json["name"],
        image1: json["image1"],
        image2: json["image2"],
        image3: json["image3"],
        image4: json["image4"],
        image5: json["image5"],
        logo: json["logo"],
        address: json["address"],
        contactNumber: json["contact_number"],
        fb: json["fb"],
        details: json["details"],
        mapLink: json["map_link"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        activityTypeId: json["activity_type_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image1": image1,
        "image2": image2,
        "image3": image3,
        "image4": image4,
        "image5": image5,
        "logo": logo,
        "address": address,
        "contact_number": contactNumber,
        "fb": fb,
        "details": details,
        "map_link": mapLink,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt,
        "activity_type_id": activityTypeId,
      };
}
