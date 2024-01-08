// To parse this JSON data, do
//
// final exchange = exchangeFromJson(jsonString);

import 'dart:convert';

Exchange exchangeFromJson(String str) => Exchange.fromJson(json.decode(str));

String exchangeToJson(Exchange data) => json.encode(data.toJson());

class Exchange {
    Exchange({
        this.result,
    });

    List<Result>? result;

    factory Exchange.fromJson(Map<String, dynamic> json) => Exchange(
        result: json["result"] == null ? [] : List<Result>.from(json["result"]!.map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "result": result == null ? [] : List<dynamic>.from(result!.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.placeId,
        this.placeName,
        this.latitude,
        this.longitude,
        // this.categoryCode,
        // this.categoryDescription,
        // this.sha,
        this.location,
        this.thumbnailUrl,
        // this.destination,
        this.tags,
        required this.distance,
        this.updateDate,
    });

    String? placeId;
    String? placeName;
    double? latitude;
    double? longitude;
    // CategoryCode? categoryCode;
    // CategoryDescription? categoryDescription;
    // Sha? sha;
    Location? location;
    String? thumbnailUrl;
    // Destination? destination;
    dynamic tags;
    double distance;
    DateTime? updateDate;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        placeId: json["place_id"],
        placeName: json["place_name"],
        latitude: json["latitude"]?.toDouble(),
        longitude: json["longitude"]?.toDouble(),
        // categoryCode: categoryCodeValues.map[json["category_code"]]!,
        // categoryDescription: categoryDescriptionValues.map[json["category_description"]],
        // sha: json["sha"] == null ? null : Sha.fromJson(json["sha"]),
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        thumbnailUrl: json["thumbnail_url"],
        // destination: destinationValues.map[json["destination"]]!,
        tags: json["tags"],
        distance: json["distance"],
        updateDate: json["update_date"] == null ? null : DateTime.parse(json["update_date"]),
    );

    Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "place_name": placeName,
        "latitude": latitude,
        "longitude": longitude,
        // "category_code": categoryCodeValues.reverse[categoryCode],
        // "category_description": categoryDescriptionValues.reverse[categoryDescription],
        //"sha": sha?.toJson(),
        "location": location?.toJson(),
        "thumbnail_url": thumbnailUrl,
        // "destination": destinationValues.reverse[destination],
        "tags": tags,
        "distance": distance,
        "update_date": updateDate?.toIso8601String(),
    };
}

// enum CategoryCode { RESTAURANT }

// final categoryCodeValues = EnumValues({
//     "RESTAURANT": CategoryCode.RESTAURANT
// });

// enum CategoryDescription { EMPTY }

// final categoryDescriptionValues = EnumValues({
//     "ร้านอาหาร กาแฟ เบเกอรี่": CategoryDescription.EMPTY
// });

// enum Destination { EMPTY }

// final destinationValues = EnumValues({
//     "กรุงเทพมหานคร": Destination.EMPTY
// });

class Location {
    Location({
        this.address,
        this.subDistrict,
        this.district,
        //this.province,
        this.postcode,
    });

    String? address;
    String? subDistrict;
    String? district;
    //Destination? province;
    String? postcode;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: json["address"],
        subDistrict: json["sub_district"],
        district: json["district"],
        //province: destinationValues.map[json["province"]]!,
        postcode: json["postcode"],
    );

    Map<String, dynamic> toJson() => {
        "address": address,
        "sub_district": subDistrict,
        "district": district,
        //"province": destinationValues.reverse[province],
        "postcode": postcode,
    };
}

// class Sha {
//     Sha({
//         this.shaName,
//         this.shaTypeCode,
//         this.shaTypeDescription,
//         this.shaCateId,
//         this.shaCateDescription,
//     });

//     String? shaName;
//     String? shaTypeCode;
//     ShaTypeDescription? shaTypeDescription;
//     String? shaCateId;
//     ShaCateDescription? shaCateDescription;

//     factory Sha.fromJson(Map<String, dynamic> json) => Sha(
//         shaName: json["sha_name"],
//         shaTypeCode: json["sha_type_code"],
//         shaTypeDescription: shaTypeDescriptionValues.map[json["sha_type_description"]]!,
//         shaCateId: json["sha_cate_id"],
//         shaCateDescription: shaCateDescriptionValues.map[json["sha_cate_description"]]!,
//     );

//     Map<String, dynamic> toJson() => {
//         "sha_name": shaName,
//         "sha_type_code": shaTypeCode,
//         "sha_type_description": shaTypeDescriptionValues.reverse[shaTypeDescription],
//         "sha_cate_id": shaCateId,
//         "sha_cate_description": shaCateDescriptionValues.reverse[shaCateDescription],
//     };
// }

// enum ShaCateDescription { SHA, SHA_PLUS, EMPTY }

// final shaCateDescriptionValues = EnumValues({
//     "": ShaCateDescription.EMPTY,
//     "SHA": ShaCateDescription.SHA,
//     "SHA Plus": ShaCateDescription.SHA_PLUS
// });

// enum ShaTypeDescription { EMPTY, SHA_TYPE_DESCRIPTION }

// final shaTypeDescriptionValues = EnumValues({
//     "ภัตตาคาร/ร้านอาหาร": ShaTypeDescription.EMPTY,
//     "": ShaTypeDescription.SHA_TYPE_DESCRIPTION
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         reverseMap = map.map((k, v) => MapEntry(v, k));
//         return reverseMap;
//     }
// }
