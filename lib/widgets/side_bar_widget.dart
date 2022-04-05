
import 'package:flutter/material.dart';

class SideBarWidget extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //?children: [Image.asset('assets/img/papa.png')],
              children: [ Text('hola yo')],
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}