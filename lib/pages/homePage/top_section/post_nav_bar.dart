import 'package:flutter/material.dart';
import 'package:fb_clone/theme/colors.dart';

class PostNavBar extends StatefulWidget {
  @override
  _PostNavBarState createState() => _PostNavBarState();
}

class _PostNavBarState extends State<PostNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton.icon(
            onPressed: () {}, 
            icon: const Icon(Icons.videocam, color: Colors.red, size: 20,), 
            label: const Text(
              'Live', 
              style: TextStyle(color: black, fontSize: 11),
            )
          ),
          const VerticalDivider(color: Colors.black,),
          TextButton.icon(
            onPressed: () {}, 
            icon: const Icon(Icons.add_photo_alternate, color: Colors.green, size: 20), 
            label: const Text(
              'Photo', 
              style: TextStyle(color: black , fontSize: 11),
            )
          ),
          const VerticalDivider(color: Colors.black,),
          TextButton.icon(
            onPressed: () {}, 
            icon: const Icon(Icons.video_camera_front, color: Colors.purple, size: 20), 
            label: const Text(
              'Room', 
              style: TextStyle(color: black , fontSize: 11), 
            )
          ),
        ],
      ),
    );
  }
}