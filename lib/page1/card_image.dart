import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String pathImage;

  const CardImage({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
      child: Align(
        alignment: const Alignment(0.9, 1.1),
        child: FloatingActionButton(
          heroTag: 'fab-$pathImage', // Etiqueta única para evitar conflictos
          backgroundColor: Colors.white,
          mini: true,
          onPressed: () {
            // Acción cuando se presiona el FAB
          },
          child: const Icon(Icons.favorite, color: Colors.green),
        ),
      ),
    );
  }
}
