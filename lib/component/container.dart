import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  final IconData iconData;
  Mycontainer({required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      //   height: 60,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Icon(iconData)),
    );
  }
}
