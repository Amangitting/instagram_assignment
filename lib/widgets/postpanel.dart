import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_assesment/widgets/customtext.dart';
import 'package:instagram_assesment/widgets/storycircle.dart';

import 'singlestorycircle.dart';

class Postpanel extends StatelessWidget {
  const Postpanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('lib/assets/images/201027043955-07-travel-bubble-fiji-private-jet-restricted.jpg'))
            ),
            height: 300,
          
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                        children: [
                          Singlestorycircle(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                  text: "tropicalearth",
                                  size: 11,
                                  weight: FontWeight.bold),
                              CustomText(
                                  text: "Fiji",
                                  size: 10,
                                  weight: FontWeight.normal)
                            ],
                          ),
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.more_vert),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.favorite_outline),
                            Icon(Icons.chat_bubble_outline_outlined),
                            Transform.rotate(
                                angle: 162.7,
                                child: Icon(
                                  Icons.send_outlined,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                      ),
                      Icon(Icons.bookmark_outline)
                    ],
                  ),
                ),
                CustomText(
                    text: "130 likes", size: 12, weight: FontWeight.bold),
                Row(
                  children: [
                    CustomText(
                        text: "tropicalearth",
                        size: 12,
                        weight: FontWeight.bold),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                        text: "A tiny island in Fiji",
                        size: 12,
                        weight: FontWeight.normal),
                  ],
                ),
                Row(
                  children: [
                    CustomText(
                        text: "Follow", size: 12, weight: FontWeight.normal),
                    SizedBox(
                      width: 4,
                    ),
                    CustomText(
                        text: "@tropicalearth......",
                        size: 12,
                        weight: FontWeight.normal),
                  ],
                ),
              ],
            ),
          ),
        ]);
  }
}
