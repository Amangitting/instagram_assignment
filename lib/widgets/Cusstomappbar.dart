import 'package:flutter/material.dart';

AppBar CustomAppBar(){
  return AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
          title: Container(
              width: 100,
              alignment: Alignment.centerLeft,
              child: Image.asset("lib/assets/images/Instagram_logo.svg.png")),
          actions: [
            const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Transform.rotate(
                angle: 162.7,
                child: Icon(
                  Icons.send_outlined,
                  color: Colors.black,
                )),
            SizedBox(
              width: 10,
            )
          ],
        );
}