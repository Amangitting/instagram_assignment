import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'customtext.dart';

class YourStoryCircle extends StatelessWidget {
  const YourStoryCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      left: 10,
                      bottom: 3),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("lib/assets/images/instagram-1280x720.jpg"),
                              backgroundColor: Colors.amber,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 8,

                                ),
                                Transform.scale(
                              scale: .7,
                              child: Icon(Icons.add_circle,color: Colors.blue,)),
                              ],
                            ),
                            
                             
                            
                          ],
                        ),
                        SizedBox(height: 5,),
                        CustomText(text: "Your Story", size: 10, weight: FontWeight.normal)
                      ],
                    ),
                  );
  }
}