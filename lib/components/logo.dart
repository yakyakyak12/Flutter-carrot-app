import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Image.asset(
          "assets/carrot.png",
          height: 50,
          width: 50,
        ),
      ],
    );
  }
}
