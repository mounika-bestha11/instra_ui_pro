// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('INSTAGRAM',
                style: TextStyle(
                  color: Colors.black,
                )),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //  Text("FlutLab is on your service!"),
                Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              /*child: ListView(scrollDirection: Axis.horizontal, children: [
                BubbleStories(
                  text: 'mounika',
                ),
                BubbleStories(text: 'nandu'),
                BubbleStories(text: 'manoj'),
                BubbleStories(text: 'D'),
                BubbleStories(text: 'E')
              ],
              ),*/
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: ((context, index) {
                    return BubbleStories(
                      text: people[index],
                    );
                  })),
            ),
            UserPosts(text: 'mounika'),
            UserPosts(text: 'nandu'),
          ],
        ),
      ),
    );
    /*Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: GestureDetector(
                    onTap: (() {
                      debugPrint('you have to print favorite');
                    }),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                  ),
                ),
                Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(),
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
                  return BubbleStories(
                    text: people[index],
                  );
                })),
          ),
          UserPosts(text: 'mounika'),
          UserPosts(text: 'nandu'),
        ]),
      ),
    );*/
  }
}
