import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  
  final String pathImage;
  final String name;
  final String information;
  final String comment;

  const Review(
    {super.key, 
    required this.pathImage, 
    required this.name, 
    required this.information, 
    required this.comment});

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 80,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(pathImage)),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign:  TextAlign.left,
        style: const TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 15,
          color: Color(0XFF58595B)
        ),
      ),
    );

    final userInformation = Container(
      margin: const EdgeInsets.only(
        left: 20
      ),
      child: Text(
        information,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'SFProDisply,',
          fontWeight: FontWeight.bold,
          fontSize: 11,
          color: Color(0xFF939598)
        ),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child:  Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'SFProDisplay',
          fontSize: 11,
          color: Color(0XFF231F20)
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInformation,
        userComment
      ],
    );

    return Row(
      children: [
        photo,
        userDetails
      ],
    );
  }
}