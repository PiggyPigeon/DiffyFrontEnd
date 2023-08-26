// models/user_model.dart

class UserModel {
  final int id;
  final String name;
  final String email;

  UserModel({required this.id, required this.name, required this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id']??0,
      name: json['name'].isEmpty ? 'anonymous creeper' : json['name'],
      email: json['email']??'no email address. wut',
    );
  }
}
