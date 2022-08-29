import 'package:flutter/material.dart';

class CategoryModel {
  int? id;
  late String nameEn;
  late String nameAr;
  late String active;
  late String image;
  late String eventsCount;

  CategoryModel();

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameAr = json['name_ar'];
    active = json['active'];
    image = json['image'];
    eventsCount = json['events_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_en'] = this.nameEn;
    data['name_ar'] = this.nameAr;
    data['active'] = this.active;
    data['image'] = this.image;
    data['events_count'] = this.eventsCount;
    return data;
  }
}
