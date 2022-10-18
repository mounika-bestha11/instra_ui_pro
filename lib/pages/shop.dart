import 'package:flutter/material.dart';
import 'package:instraui/util/shop_gride.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);
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
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                /* title = Row(
                  children: [
                    Container(child: Text('search')),
                  ],
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
