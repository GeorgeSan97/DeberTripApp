import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0, // ← antes no lo tenía, agrégalo o súbelo
      child: Stack(
        children: const <Widget>[
          GradientBack(title: "Popular"),
          CardImageList(),
        ],
      ),
    );
  }
}

