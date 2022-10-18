import 'package:flutter/material.dart';

class ShopGride extends StatelessWidget {
  const ShopGride({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
              color: Colors.grey[400],
            ),
          );
        }));
  }
}
