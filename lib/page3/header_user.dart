import 'package:flutter/material.dart';
import 'package:trip_app/page1/gradient_back.dart';
import 'package:trip_app/page3/profile_header.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.0, // le damos un poco más de altura
      child: Stack(
        children: const <Widget>[
          GradientBack(title: "Profile"),

          // Añadimos espacio entre "Profile" y el contenido del perfil
          Positioned(
            top: 60.0, // mueve ProfileHeader hacia abajo
            left: 0,
            right: 0,
            child: ProfileHeader(),
          ),
        ],
      ),
    );
  }
}
