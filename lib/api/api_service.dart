import 'dart:convert';
import 'dart:ffi';

import 'package:flutter_application_2/constants/api.dart';
import 'package:http/http.dart' as http;

class ApiService {

  Future<String> get_taglist () async {
    final uri = Uri.parse(ApiConstants.tagUrl);
    final response = await http.get(uri);
    return jsonDecode(response.body);
  }

  Future<String> login (String email, String password) async {
    final uri = Uri.parse(ApiConstants.loginUrl);
    final response = await http.post(uri, body: {'email': email, 'password': password});
    return jsonDecode(response.body);
  }

  Future<String> register (String first_name, String last_name, String phone, String email, String password) async {
    final uri = Uri.parse(ApiConstants.registerUrl);
    final response = await http.post(uri, body: {
                                                "first_name": first_name,
                                                "last_name": last_name,
                                                "phone": phone,
                                                "email": email,
                                                "password": password
                                                });
    return jsonDecode(response.body);
  }

  Future<String> forgot_password_call (String email) async {
  final uri = Uri.parse(ApiConstants.forgotPasswordUrl);
  final response = await http.post(uri, body: {
                                              "email": email,
                                              });
  return jsonDecode(response.body);
}

  Future<String> reset_password_call (String email) async {
  final uri = Uri.parse(ApiConstants.forgotPasswordUrl);
  final response = await http.post(uri, body: {
                                              "email": email,
                                              });
  return jsonDecode(response.body);

}


  Future<String> reset_password (String password, String token) async {
  
  final uri = Uri.parse(ApiConstants.resetPasswordUrl).replace(queryParameters: {
      'token': token,
    });
  final response = await http.post(uri, body: {
                                              "password": password
                                              });
  return jsonDecode(response.body);
  }

  Future<String> request_email_verification (String email) async {
  
  final uri = Uri.parse(ApiConstants.requestVerifyEmail);
  final response = await http.post(uri, body: {
                                              "email": email,
                                              });
  return jsonDecode(response.body);
  }

  Future<String> email_verification (String token) async {
  
  final uri = Uri.parse(ApiConstants.veifyEmail).replace(queryParameters: {
      'token': token,
    });
  final response = await http.post(uri);
  return jsonDecode(response.body);
  }


  Future<String> get_institutions () async {
  
  final uri = Uri.parse(ApiConstants.getOrCreateInstituionList);
  final response = await http.get(uri);
  return jsonDecode(response.body);
  }

  Future<String> create_institution (String InstitutionName, String description, String email, String tag_name, Bool is_draft ) async {
  final uri = Uri.parse(ApiConstants.getOrCreateInstituionList);
  final response = await http.get(uri);
  return jsonDecode(response.body);
  }

  Future<String> set_institution_image () async {
  
  final uri = Uri.parse(ApiConstants.getOrCreateInstituionList);
  final response = await http.get(uri);
  return jsonDecode(response.body);
  }



}