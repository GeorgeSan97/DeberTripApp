import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  final String title;

  const GradientBack({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330.0,
      width: 700,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF5D6BF8), Color(0xFF475AE8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 60.0, left: 20.0), // <-- Espacio debajo
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'SFProDisplay',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
