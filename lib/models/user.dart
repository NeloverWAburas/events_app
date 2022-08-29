class User {
  late int id;
  late String name;
  late String mobile;
  late String gender;
  late String token;
  late String tokenType;
  late String refreshToken;
  late String password;

  User();
  /* User(
      {this.id,
      this.name,
      this.mobile,
      this.gender,
      this.token,
      this.tokenType,
      this.refreshToken});*/

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mobile = json['mobile'];
    gender = json['gender'];
    token = json['token'];
    tokenType = json['token_type'];
    refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['mobile'] = this.mobile;
    data['gender'] = this.gender;
    data['token'] = this.token;
    data['token_type'] = this.tokenType;
    data['refresh_token'] = this.refreshToken;
    return data;
  }
}
