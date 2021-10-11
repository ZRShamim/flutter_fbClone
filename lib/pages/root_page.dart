import 'package:fb_clone/pages/homePage/story_section/story.dart';
import 'package:fb_clone/pages/homePage/top_section/post_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:fb_clone/pages/homePage/top_section/post_section.dart';
import 'package:fb_clone/pages/homePage/top_section/top_nav_bar.dart';
import 'package:fb_clone/theme/colors.dart';
import 'package:fb_clone/data/constant.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: TopNavBar(),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: PostSection(),
                  ),
                  const Divider(
                    thickness: 1,
                    height: 20,
                  ),
                  PostNavBar(),
                  const Divider(
                    thickness: 10,
                  ),
                  Story(),
                  const SizedBox(height: 10,),
                  const Divider(
                    thickness: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
