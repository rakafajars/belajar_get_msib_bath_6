// To parse this JSON data, do
//
//     final placeHolderPostModel = placeHolderPostModelFromJson(jsonString);

import 'dart:convert';

PlaceHolderPostModel placeHolderPostModelFromJson(String str) => PlaceHolderPostModel.fromJson(json.decode(str));

String placeHolderPostModelToJson(PlaceHolderPostModel data) => json.encode(data.toJson());

class PlaceHolderPostModel {
    String? title;
    String? body;
    int? useRId;
    int? id;

    PlaceHolderPostModel({
        this.title,
        this.body,
        this.useRId,
        this.id,
    });

    factory PlaceHolderPostModel.fromJson(Map<String, dynamic> json) => PlaceHolderPostModel(
        title: json["title"],
        body: json["body"],
        useRId: json["useRId"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
        "useRId": useRId,
        "id": id,
    };
}
