import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class AuthRemoteRepository {
  Future<void> signup({
    required String name,
    required String email,
    required String password,
  }) async {
    final response = await http.post(
        Uri.parse('http://localhost:5000/auth/signup'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'name': name, 'email': email, 'password': password}));
    print(response.body);
    print(response.statusCode);
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    final response =
        await http.post(Uri.parse('http://localhost:5000/auth/login'),
            headers: {
              'Content-Type': 'application/json',
            },
            body: jsonEncode({'email': email, 'password': password}));
  }
}
