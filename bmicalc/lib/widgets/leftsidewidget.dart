import 'package:bmicalc/constants/constants.dart';
import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  final double widthside;
  const LeftSide({Key? key, this.widthside = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: widthside,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
            ),
            color: green,
          ),
        ),
      ],
    );
  }
}
