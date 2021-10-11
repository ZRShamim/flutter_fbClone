import 'package:fb_clone/data/constant.dart';
import 'package:fb_clone/theme/colors.dart';
import 'package:flutter/material.dart';

class UserStory extends StatefulWidget {
  const UserStory({ Key? key }) : super(key: key);

  @override
  _UserStoryState createState() => _UserStoryState();
}

class _UserStoryState extends State<UserStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 180,
                  width: 110,
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: grey, width: 0.5)),
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    userProfile[0]['userImg'] as String),
                                fit: BoxFit.cover)),
                      ),
                      Align(
                        alignment: const Alignment(0, 0.45),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: white, width: 3),
                              borderRadius: BorderRadius.circular(50)),
                          child: const Icon(Icons.add),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Create Story',
                            style: TextStyle(
                                color: black,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                );
  }
}