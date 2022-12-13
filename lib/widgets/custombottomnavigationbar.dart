import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 40,
          child: BottomAppBar(
              color: Colors.white,
              elevation: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home),
                    Icon(Icons.search_outlined),
                    Icon(Icons.add_box_outlined),
                    Icon(Icons.favorite_border),
                    Icon(Icons.person_outline),
                  ])),
        );
  }
}