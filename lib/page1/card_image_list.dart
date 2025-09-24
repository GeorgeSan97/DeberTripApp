import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          CardImage(pathImage: 'assets/images/mountains.jpg'),
          CardImage(pathImage: 'assets/images/lake.jpg'),
          CardImage(pathImage: 'assets/images/grass.jpg'),
        ],
      ),
    );
  }
}
