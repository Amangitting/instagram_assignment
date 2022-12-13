import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_assesment/services/apiService.dart';
import 'package:instagram_assesment/services/controller.dart';


import 'customtext.dart';

userController usercontroller = Get.put(userController());
class Storycircle extends StatefulWidget {
  const Storycircle({super.key});

  @override
  State<Storycircle> createState() => _StorycircleState();
}

class _StorycircleState extends State<Storycircle> {
  @override
  Widget build(BuildContext context) {
    return  Obx(() {
              if (usercontroller.IsLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else {
                return
    
  
  ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: ScrollPhysics(),
      itemCount: usercontroller.userList[0].data.length,
      itemBuilder: (BuildContext context, int index) {
        var data = usercontroller.userList[0].data[index];
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage:
                    AssetImage("lib/assets/images/instagram-1280x720.jpg"),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(data.avatar.toString()),
                    
                    radius: 28),
                radius: 30,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            CustomText(text: data.firstName.toString() +
                                        " " +
                                        data.lastName.toString(), size: 10, weight: FontWeight.normal)
          ],
        );
      });
}
})
  ;}}