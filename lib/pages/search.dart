import 'dart:html';

import 'package:flutter/material.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(color: Colors.black, child: Text('Search')),
                ],
              ),
            )),
      ),
      body: Text('search'),
    );
  }
}
