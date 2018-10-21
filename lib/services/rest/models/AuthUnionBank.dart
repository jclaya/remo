import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthUnionBank {
  final dynamic token_type;
  final String access_token;
  final int expires_in;
  final String scope;
  final String refresh_token;
  AuthUnionBank(
      {this.token_type,
      this.access_token,
      this.expires_in,
      this.scope,
      this.refresh_token});

  factory AuthUnionBank.fromJson(Map<String, dynamic> json) {
    return AuthUnionBank(
        token_type: json['token_type'],
        access_token: json['access_token'],
        expires_in: json['expires_in'],
        scope: json['scope'],
        refresh_token: json['refresh_token']);
  }
}

class Api {}
/*
      Future<Post> fetchPost() async {
      final response =
          await http.get('https://jsonplaceholder.typicode.com/posts/1');

      if (response.statusCode == 200) {
        // If the call to the server was successful, parse the JSON
        return Post.fromJson(json.decode(response.body));
      } else {
        // If that call was not successful, throw an error.
        throw Exception('Failed to load post');
      }
    }*/
