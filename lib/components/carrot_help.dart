import 'package:flutter/material.dart';

class CarrotHelp extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final textButton;
  String text;
  final Widget routerPage;

  CarrotHelp({
    required this.text,
    required this.mainAxisAlignment,
    this.textButton = "",
    required this.routerPage,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => routerPage));
      },
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Text(
            "$text",
            style: const TextStyle(
                fontSize: 15, height: 2, fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 5),
          Text(
            "$textButton",
            style: TextStyle(
              fontSize: 15,
              height: 2,
              fontWeight: FontWeight.w700,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
