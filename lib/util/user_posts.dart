// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final name;
  UserPosts({this.name});

  //const UserPosts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200],
                ),
              ),
              Text(
                'text',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.calendar_today),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.menu),
              Container(
                height: 400,
                color: Colors.blue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.share),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Icon(Icons.chat_bubble_outlined),
                  ),
                  Icon(Icons.bookmark),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 8),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'mounika',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'i turn the dity they throwing into riches till in fifty '),
              ],
            ),
          ),

          /* Row(
            children: [
              Text('linked by'),
              Text(
                'i turn the dity they throwing into riches till in fifty ',
                // c
              ),
               Text('and'),
              Text('others',
               style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),*/
        ),
        Expanded(child: ShopGride()),
      ],
    );
  }

  ShopGride() {}
}
