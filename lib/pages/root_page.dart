import 'package:fb_clone/data/constant.dart';
import 'package:fb_clone/widgets/navbar_uti.dart';
import 'package:flutter/material.dart';
import 'package:fb_clone/theme/colors.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
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
                        activeTab = index;
                      });
                    },
                    icon: Icon(
                      navItems[index]['icon'],
                      size: navItems[index]['size'],
                      color: activeTab == index ? Colors.blue: black,
                    ));
              }),
            )
          ],
        ),
      ),
    );
  }
}
