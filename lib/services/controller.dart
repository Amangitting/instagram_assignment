import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_assesment/services/apiService.dart';
import 'package:instagram_assesment/services/modelfile.dart';


class userController extends GetxController {
  services ser = services();
  var IsLoading = true.obs;
  var userList = <Model>[].obs;

  @override
  void onInit() {
    fetchUsers();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchUsers() async {
    try {
      IsLoading(true);
      var users = await ser.getUser();
      if (users != Null) {
        debugPrint(
            "--------------------------------" + userList.length.toString());
        userList.assignAll(users);
        debugPrint("--------------------------------" + userList[0].toString());
      }
    } finally {
      IsLoading(false);
    }
  }
}