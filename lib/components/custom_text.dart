import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  // final double fontSize;   // final Color color;   // final Alignment alignment;
  const CustomText(
      {Key? key,
      this.text ="",
      // this.fontSize = 18,    // this.color =Colors.black,    // this.alignment =Alignment.topRight,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
              child:  Text(text,
                style:  const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,),
              padding: const EdgeInsets.all(20.0),);
  }}