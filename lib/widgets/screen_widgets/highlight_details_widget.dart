import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';

class HighlightDetailsWidget extends StatelessWidget {
  const HighlightDetailsWidget(
      {super.key,
      this.spacingForText = true,
      this.textAlign = TextAlign.center});
  final bool? spacingForText;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: spacingForText! ? 150 : 0),
          child: Text.rich(
            textAlign: textAlign,
            TextSpan(
              style: GoogleFonts.preahvihear(
                color: white,
                fontSize: large,
                fontWeight: hardBoldWeight,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text:
                      "I have a strong understanding of a diverse range of modern ",
                  style: TextStyle(
                    color: white,
                  ),
                ),
                TextSpan(
                  text: "tech stacks ",
                  style: TextStyle(
                    color: purple,
                  ),
                ),
                TextSpan(
                  text:
                      "empowering me to craft seamless and innovative solutions.",
                  style: TextStyle(
                    color: white,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: spacingForText! ? 150 : 0),
                child: CustomTextWidget(
                  text:
                      "As a Flutter developer I gained valuable skills in developing purposeful screens, bug hunting, and structuring code using MVVM and MVC architectures. I also worked extensively with APIs, improving both my technical and problem-solving abilities.",
                  fontSize: medium,
                  textAlign: textAlign,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
