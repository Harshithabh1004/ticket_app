import 'package:flutter/material.dart';
import 'package:ticket_app_project/base/widgets/text_style_fourth.dart';
import 'package:ticket_app_project/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  const AppColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.alignment,
  });
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        SizedBox(height: 5),
        TextStyleFourth(text: bottomText),
      ],
    );
  }
}
