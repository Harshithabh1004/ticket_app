import 'package:flutter/material.dart';

class BigCircle extends StatelessWidget {
  const BigCircle({super.key, required this.isRight});
  final bool isRight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isRight == true
              ? BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
        ),
      ),
    );
  }
}
