import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'regreso.dart';

class obtienedatos {
  Future<String> getapi(String comida) async {
    String myurl = 'https://foodish-api.herokuapp.com/api/images/' + comida;
    final response = await http.get(Uri.parse(myurl));

    return response.body.toString();
  }

  Future<regreso> getdatos(String comida) async {
    String myregreso = '';
    myregreso = await getapi(comida);
    Map<String, dynamic> data = jsonDecode(myregreso);
    regreso r = regreso(comida: data['image']);
    return r;
  }
}
