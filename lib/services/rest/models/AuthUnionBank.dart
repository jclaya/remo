import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class AuthUnionBank {
  final dynamic token_type;
  final String  access_token;
  final int  expires_in;
  final String  scope;
  final String  refresh_token;
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
      refresh_token: json['refresh_token']
    );
  }
}



class Api {
  static List<ModelTest> createForeXFromList(List data) {
    List<ModelTest> list = new List();
    for (int i = 0; i < data.length; i++) {
      ModelTest mo_test = new ModelTest(id: data[i]["id"] ,
                                        symbol: data[i]["symbol"] ,
                                        name: data[i]["name"] ,
                                        buying: data[i]["buying"] ,
                                        selling: data[i]["selling"] ,
                                        asOf: data[i]["asOf"] );
      list.add(mo_test);
    }
    return list;
  }

  static Future<List<ModelTest>> getForeX() async {

    final response = await http.get('https://api-uat.unionbankph.com/partners/sb/forex/v1/rates', 
                                  headers: {"x-ibm-client-id": "606692bc-bdf4-45d9-9886-97acdfded3e4",
                                            "x-ibm-client-secret": "A8qA3bP5uK6mF7tN7hR2fP7wK3dV4qD7nE3fF1hR1wV3hU4gI3"});
    print(response.body);
    List responseJson = json.decode(response.body.toString());
    List<ModelTest> model_test = createForeXFromList(responseJson);
    
    
    return model_test;
  }
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
}



