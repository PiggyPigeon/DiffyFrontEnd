// services/http_service.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:diffy/models/user_model.dart';

class HttpService {
  final String baseUrl; // = 'https://diffy-app-455de95e2ffc.herokuapp.com/api';

  HttpService(this.baseUrl);

  Future<UserModel> getUser(int id) async {
    final response =
        await http.get(Uri.parse('$baseUrl/users/$id'), headers: getHeaders());

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user: ${response.body}');
    }
  }

  Map<String, String> getHeaders() {
    return {
      'Authorization': 'Token f744044b81408cf6284185ce0ff76d352671950b',
      'Content-Type': 'application/json',
    };
  }
}
