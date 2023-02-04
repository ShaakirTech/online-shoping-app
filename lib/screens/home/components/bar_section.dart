import 'package:flutter/material.dart';

import '../../../constants.dart';

class BarSection extends StatelessWidget {
  const BarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Hi customer\nFind your\n needs",
              style: TextStyle(
                  height: 1.3,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat"),
            )
          ],
        ),
        Spacer(),
      ],
    );
  }
}
