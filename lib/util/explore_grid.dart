import 'package:flutter/material.dart';

class ExploreGride extends StatelessWidget {
  const ExploreGride({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color(0xff6e5f5f),
            ),
          );
        });
  }
}
