import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Singlestorycircle extends StatelessWidget {
  const Singlestorycircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage("lib/assets/images/instagram-1280x720.jpg"),
        child: CircleAvatar(
            child: Image.asset("lib/assets/images/Instagram_logo.svg.png"),
            radius: 17),
        radius: 30,
      ),
    );
  }
}
