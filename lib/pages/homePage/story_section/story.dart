import 'package:fb_clone/data/constant.dart';
import 'package:fb_clone/pages/homePage/story_section/others_story.dart';
import 'package:fb_clone/pages/homePage/story_section/user_story.dart';
import 'package:fb_clone/theme/colors.dart';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 5, top: 10 , right: 5),
            child: UserStory(),
          ),
          OtherStory(),
        ],
      ),
    );
  }
}
