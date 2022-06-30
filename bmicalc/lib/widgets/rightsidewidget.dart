import 'package:bmicalc/constants/constants.dart';
import 'package:flutter/material.dart';

class RightSide extends StatelessWidget {
  final double widthside;
  const RightSide({Key? key, this.widthside = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: widthside,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
            ),
            color: red,
          ),
        ),
      ],
    );
  }
}
