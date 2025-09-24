import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int numberStarts;
  final String descriptionDummy;

  const DescriptionPlace({
    super.key,
    required this.namePlace, 
    required this.numberStarts, 
    required this.descriptionDummy});

  @override
  Widget build(BuildContext context) {

        final star = Container(
      margin: const EdgeInsets.only(
        top: 273,
        right: 3
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C716),
        size: 18,
      ),
    );

    final starHalf = Container(
      margin: const EdgeInsets.only(
        top: 273,
        right: 3
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C716),
        size: 18,
      ),
    );

        final starBorder = Container(
      margin: const EdgeInsets.only(
        top: 273,
        right: 3
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFA7A9AC),
        size: 18,
      ),
    );

    final description = Container(
      margin:  const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descriptionDummy,
        style: const TextStyle(
          fontFamily: 'Agency FB',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0XFF6D6E71)
        ),
      ),
    );
    
    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 270.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: 'SFProDisplay',
              fontSize: 30.0,
              fontWeight: FontWeight.w400
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star,star,star,starHalf,starBorder],
        )
      ],
    );

final button = Container(
  margin: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
  width: 140,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
      colors: [
        Color(0xFF4268D3),
        Color(0xFF584CD1),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    onPressed: () {},
    child: const Text(
      "Navigate",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
  ),
);




return Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    titleStars,
    description,
    button,
  ],
);

  }
}