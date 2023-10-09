import 'package:flutter/material.dart';

class CarrotHeader extends StatelessWidget {
  String title;
  String content;
  CarrotHeader({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 70),
        Text(
          "$title",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        Text(
          "$content",
          style: TextStyle(
            fontSize: 15,
            height: 2,
            color: Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
