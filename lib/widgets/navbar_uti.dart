import 'package:flutter/material.dart';
import 'package:fb_clone/theme/colors.dart';

class NavBarUti extends StatelessWidget {
  IconData icon;
  NavBarUti(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          color: grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(50)),
      child: Icon(icon, size: 25,),
    );
  }
}
