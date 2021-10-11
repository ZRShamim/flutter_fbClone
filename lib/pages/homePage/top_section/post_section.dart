import 'package:fb_clone/data/constant.dart';
import 'package:fb_clone/theme/colors.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {
  const PostSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: NetworkImage(
                  userProfile[0]['userImg'] as String,
                ),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          width: 20,
        ),
        Flexible(
            child: Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: black.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(30)),
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: TextField(
              cursorColor: primary,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'What\'s on your mind'),
            ),
          ),
        ))
      ],
    );
  }
}
