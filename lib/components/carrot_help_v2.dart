import 'package:flutter/material.dart';

class CarrotHelpV2 extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final textButton;
  String text;
  CarrotHelpV2(
      {required this.text,
      required this.mainAxisAlignment,
      this.textButton = ""});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(
          "$text",
          style: const TextStyle(
            fontSize: 15,
            height: 2,
            fontWeight: FontWeight.w700,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () => print("$textButton 클릭됨"),
          splashColor: Colors.green,
          child: Text(
            "$textButton",
            style: TextStyle(
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
