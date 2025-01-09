import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class ApiService {
  static const String baseUrl = 'https://dummyjson.com/users';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      // Parse data JSON
      final Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> usersJson = data['users'];  // Ambil 'users' dari JSON yang berisi list

      return usersJson.map((user) => User.fromJson(user)).toList();  // Parse tiap user menjadi objek User
    } else {
      throw Exception('Failed to load users');
    }
  }
}
