import 'dart:convert';

// List<PhotosModel> productPhotosModelFromJson(String str) {
//   final jsonData = json.decode(str);

//   if (jsonData['photos'] != null && jsonData['photos'] is List) {
//     return (jsonData['photos'] as List)
//         .map((dynamic item) => PhotosModel.fromJson(item))
//         .toList();
//   } else {
//     return [];
//   }
// }

List<PhotosModel> productPhotosModelFromJson(String str) =>
    List<PhotosModel>.from((json.decode(str)['photos'] as List<dynamic>? ?? [])
        .map((dynamic item) =>
            PhotosModel.fromJson(item as Map<String, dynamic>)));

String productResponseModelToJson(List<PhotosModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Src {
  String? original;
  String? small;
  String? portrait;

  Src({this.original, this.small, this.portrait});

  Src.fromJson(Map<String, dynamic> json) {
    original = json['original'];
    small = json['small'];
    portrait = json['portrait'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['original'] = this.original;
    data['small'] = this.small;
    data['portrait'] = this.portrait;
    return data;
  }
}

class PhotosModel {
  int id;
  int width;
  int height;
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  String avgColor;
  Src? src; // Fix: Use the 'Src' class
  bool liked;
  String alt;

  PhotosModel(
      {required this.id,
      required this.width,
      required this.height,
      required this.url,
      required this.photographer,
      required this.photographerUrl,
      required this.photographerId,
      required this.avgColor,
      this.src,
      required this.liked,
      required this.alt});

  factory PhotosModel.fromJson(Map<String, dynamic> json) => PhotosModel(
        id: json['id'],
        width: json['width'],
        height: json['height'],
        url: json['url'],
        photographer: json['photographer'],
        photographerUrl: json['photographer_url'],
        photographerId: json['photographer_id'],
        avgColor: json['avg_color'],
        src: json['src'] != null ? Src.fromJson(json['src']) : Src(),
        liked: json['liked'],
        alt: json['alt'],
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['width'] = this.width;
    data['height'] = this.height;
    data['url'] = this.url;
    data['photographer'] = this.photographer;
    data['photographer_url'] = this.photographerUrl;
    data['photographer_id'] = this.photographerId;
    data['avg_color'] = this.avgColor;
    if (this.src != null) {
      data['src'] = this.src!.toJson();
    }
    data['liked'] = this.liked;
    data['alt'] = this.alt;
    return data;
  }
}
