// ignore_for_file: unnecessary_import, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_assesment/widgets/Cusstomappbar.dart';
import 'package:instagram_assesment/widgets/custombottomnavigationbar.dart';
import 'package:instagram_assesment/widgets/customtext.dart';
import 'package:instagram_assesment/widgets/postpanel.dart';
import 'package:instagram_assesment/widgets/singlestorycircle.dart';
import 'package:instagram_assesment/widgets/storycircle.dart';
import 'package:instagram_assesment/widgets/storypanel.dart';

class InstaHomeScreen extends StatefulWidget {
  const InstaHomeScreen({super.key});

  @override
  State<InstaHomeScreen> createState() => _InstaHomeScreenState();
}

class _InstaHomeScreenState extends State<InstaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(),
            bottomNavigationBar: CustomBottomNavigationBar(),
            body: ListView(
              children: [
                Storypanel(),
                Postpanel()
               
              ],
            )));
  }
}
