import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instraui/util/account_tab1.dart';
import 'package:instraui/util/account_tab2.dart';
import 'package:instraui/util/account_tab3.dart';
import 'package:instraui/util/account_tab4.dart';
import 'package:instraui/util/bubble_stories.dart';
import 'package:instraui/util/explore_grid.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var title;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 20,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Column(
                            children: <Widget>[
                              Text(
                                '237',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('posts'),
                              Column(
                                children: <Widget>[
                                  Text(
                                    '348',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('folowers'),
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        '5874',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text('following'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'koko',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'I create  games and apps',
                              style: TextStyle(),
                            ),
                          ),
                          Text(
                            'm/youtube/mitchcho',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // ClipRect(
                          //  borderRadius: BorderRadius.circular(5),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Edit profile'),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text('Add tools'),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('INS lights'),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                          ),
                          // ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: [
                        BubbleStories(text: 'story 1'),
                        BubbleStories(text: 'story 2'),
                        BubbleStories(text: 'story 3'),
                        BubbleStories(text: 'story 4'),
                      ]),
                    ),
                    TabBar(tabs: [
                      Tab(icon: (Icon(Icons.grid_3x3_outlined))),
                      Tab(icon: (Icon(Icons.video_call))),
                      Tab(icon: (Icon(Icons.shop))),
                      Tab(icon: (Icon(Icons.person)))
                    ]),
                    Expanded(
                        child: TabBarView(
                      children: [
                        AccountTab1(),
                        AccountTab2(),
                        AccountTab3(),
                        AccountTab4(),
                      ],
                    ))
                  ]),
            )
          ])),
    );
  }

  icon(Icon icon) {}
}
