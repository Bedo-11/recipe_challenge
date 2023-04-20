import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_challange/core/extension/widget_extension.dart';
import '../../../../core/constants/constans.dart';

class SectionHead extends StatelessWidget {
  const SectionHead({
    Key? key,
    this.title,
  }) : super(key: key);

  final String? title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Text(
              title!,
              style: GoogleFonts.dynaPuff(
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(right: 5),
                height: 7,
                color: Constants.primaryColor.withOpacity(0.2),
              ),
            )
          ],
        ),
      ],
    ).paddingVertically(20);
  }
}
