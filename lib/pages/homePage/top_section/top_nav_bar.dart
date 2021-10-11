import 'package:fb_clone/data/constant.dart';
import 'package:fb_clone/theme/colors.dart';
import 'package:fb_clone/widgets/navbar_uti.dart';
import 'package:flutter/material.dart';

class TopNavBar extends StatefulWidget {
  int activeTab = 0;

  @override
  _TopNavBarState createState() => _TopNavBarState();
}

class _TopNavBarState extends State<TopNavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'facebook',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                NavBarUti(Icons.search),
                const SizedBox(
                  width: 15,
                ),
                NavBarUti(Icons.chat)
                // Icon(Icons.search),
                // Icon(Icons.chat),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(navItems.length, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    widget.activeTab = index;
                  });
                },
                icon: Icon(
                  navItems[index]['icon'],
                  size: navItems[index]['size'],
                  color: widget.activeTab == index ? Colors.blue : black,
                ));
          }),
        )
      ],
    );
  }
}
