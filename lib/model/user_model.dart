class UserModel {
  int? id;
  String? name;
  String? email;
  String? password;
  String? conpassword;
  String? phone;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.conpassword,
    this.phone,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      conpassword: json['conpassword'],
      phone: json['phone'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'name': name,
      'token': token,
    };
  }
}
