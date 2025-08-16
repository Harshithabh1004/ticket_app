import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  const AppLayoutbuilderWidget({
    super.key,
    required this.randomDivider,
    this.width = 3,
  });
  final int randomDivider;
  final double width;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print("${constraints.constrainWidth().floor()}");
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
