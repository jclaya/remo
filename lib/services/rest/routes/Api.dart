import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:remo/services/rest/config/creds.dart';

import 'package:remo/services/rest/models/AuthUnionBank.dart';


final BASE_URL = 'https://api-uat.unionbankph.com/partners/sb/';

class Api {
  final String get_path1 = 'convergent/v1/oauth2/authorize';


  

}
/*
static Future<List<AuthUnionBank>> getAuthorize() async {

    final response = await http.get(BASE_URL + 'forex/v1/rates', 
                                  headers: {"x-ibm-client-id": creds_client_id,
                                            "x-ibm-client-secret": creds_client_secret});
    print(response.body);
    List responseJson = json.decode(response.body.toString());
    List<ModelTest> model_test = createForeXFromList(responseJson);
    
    
    return model_test;

static List<AuthUnionBank> createForeXFromList(List data) {
    List<AuthUnionBank> list = new List();
    for (int i = 0; i < data.length; i++) {
      AuthUnionBank mo_test = new AuthUnionBank(id: data[i]["id"] ,
                                        symbol: data[i]["symbol"] ,
                                        name: data[i]["name"] ,
                                        buying: data[i]["buying"] ,
                                        selling: data[i]["selling"] ,
                                        asOf: data[i]["asOf"] );
      list.add(mo_test);
    }
    return list;
  }

*/