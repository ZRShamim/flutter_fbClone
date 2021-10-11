import 'package:fb_clone/data/constant.dart';
import 'package:fb_clone/theme/colors.dart';
import 'package:flutter/material.dart';

class OtherStory extends StatefulWidget {
  const OtherStory({Key? key}) : super(key: key);

  @override
  _OtherStoryState createState() => _OtherStoryState();
}

class _OtherStoryState extends State<OtherStory> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(storyList.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(left: 5, top: 10, right: 5),
        child: SizedBox(
          height: 180,
          width: 110,
          child: Stack(
            children: [
              Container(
                height: 180,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                            storyList[index]['storyImg'] as String),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: const Alignment(-0.95, -0.95),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image:
                              NetworkImage(storyList[index]['userImg'] as String),
                          fit: BoxFit.cover)),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    storyList[index]['name'] as String,
                    style: const TextStyle(
                        color: white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}
