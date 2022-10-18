// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instraui/util/bubble_stories.dart';
import 'package:instraui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  // const UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List people = [
      'mounika',
      'manoj',
      'nandu',
      'D',
      'E',
    ];

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'INSTAGRAM',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                ),
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(children: <Widget>[
        Row(
          children: [
            Container(
              // color: Colors.grey[400],
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        Container(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: people.length,
            itemBuilder: ((context, index) {
              return BubbleStories(
                text: people[index],
              );
            }),
          ),
          /* children: [
            BubbleStories(
              text: 'mounika',
            ),
            BubbleStories(
              text: 'manoj',
            ),
            BubbleStories(
              text: 'nandu',
            ),
            BubbleStories(
              text: 'D',
            ),
            BubbleStories(
              text: 'E',
            ),
          ],*/
        ),
        Expanded(
          child: ListView.builder(
              itemCount: people.length,
              itemBuilder: ((context, index) {
                return UserPosts(name: people[index]);
              })),
        ),
      ]),
    );
  }
}
