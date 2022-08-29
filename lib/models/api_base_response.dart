import 'category_model.dart';

class ApiBaseResponse {
  late bool status;
  late String message;
  late List<CategoryModel> list;

  ApiBaseResponse();

  ApiBaseResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['list'] != null) {
      list = <CategoryModel>[];
      json['list'].forEach((v) {
        list.add(new CategoryModel.fromJson(v));
      });
    }
  }

  /*Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.list != null) {
      data['list'] = this.list!.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
}
