import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:instagram_assesment/services/modelfile.dart';

import 'package:get/get.dart';

class services {
  var url = Uri.parse("https://reqres.in/api/users?page=2");

  Future<List<Model>> getUser() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      debugPrint("200");
      String responsebody = "[${response.body}]";
      return modelFromJson(responsebody);
    } else {
      return [];
    }
  }
}