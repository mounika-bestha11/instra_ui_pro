import 'package:flutter/material.dart';
import 'package:instraui/util/explore_grid.dart';

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
              child: Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                    Container(
                        child: Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )),
                  ],
                ),
              ),
            )),
      ),
      body: ExploreGride(),
    );
  }
}
