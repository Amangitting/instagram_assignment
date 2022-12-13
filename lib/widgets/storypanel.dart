import 'package:flutter/material.dart';
import 'package:instagram_assesment/widgets/storycircle.dart';
import 'package:instagram_assesment/widgets/yourstorycircle.dart';

class Storypanel extends StatefulWidget {
  const Storypanel({super.key});

  @override
  State<Storypanel> createState() => _StorypanelState();
}

class _StorypanelState extends State<Storypanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(width: .1,color: Colors.grey)
              ),
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: ListView(
                  
                  scrollDirection: Axis.horizontal,
                
                children: [
                  YourStoryCircle(),
                  Storycircle()
                  
                 
                  
          ],
        ),
      ));
  }
}