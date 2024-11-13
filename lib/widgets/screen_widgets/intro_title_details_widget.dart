import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/social_media_icons_widgets.dart';

class IntroTitleDetailsWidget extends StatelessWidget {
  const IntroTitleDetailsWidget(
      {super.key, this.spacingWidget, this.spacingForText = true});
  final Widget? spacingWidget;
  final bool? spacingForText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.width >= 950 ? size.height * 0.15 : size.width * 0.15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (spacingWidget != null) spacingWidget!,
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextWidget(
                    text: "A Software Developer from India",
                    textDecoration: TextDecoration.underline,
                    fontSize: mediumLarge,
                  ),
                  const CustomTextWidget(
                    text: "Proficient in building ",
                    fontSize: large,
                  ),
                  RichText(
                    maxLines: 2,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Robust ",
                          style: GoogleFonts.preahvihear(
                            color: purple,
                            fontSize: large,
                            fontWeight: hardBoldWeight,
                          ),
                        ),
                        TextSpan(
                          text: "and ",
                          style: GoogleFonts.preahvihear(
                            color: white,
                            fontSize: large,
                            fontWeight: hardBoldWeight,
                          ),
                        ),
                        TextSpan(
                          text: "Dynamic ",
                          style: GoogleFonts.preahvihear(
                            color: purple,
                            fontSize: large,
                            fontWeight: hardBoldWeight,
                          ),
                        ),
                        TextSpan(
                          text: "Solutions ...",
                          style: GoogleFonts.preahvihear(
                            color: white,
                            fontSize: large,
                            fontWeight: hardBoldWeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CustomTextWidget(
                    text:
                        "also an Engineer, Explorer, Open Source Contributer too!",
                    fontSize: smallMedium,
                    fontWeight: FontWeight.w200,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SocialMediaIconsWidget(),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.width >= 950 ? size.height * 0.25 : size.width * 0.15,
        ),
        Row(
          children: [
            if (spacingForText!)
              SizedBox(
                width: size.width * 0.18,
              ),
            const Flexible(
              child: CustomTextWidget(
                text: "I am a Software Engineer!",
                fontSize: large,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
        Row(
          children: [
            if (spacingForText!)
              SizedBox(
                width: size.width * 0.18,
              ),
            const Flexible(
              child: CustomTextWidget(
                text:
                    "Passionate and skilled Flutter Developer with hands-on experience in designing and developing cross-platform mobile applications. Currently seeking a challenging role to leverage my expertise in Flutter and contribute to innovative projects",
                fontSize: medium,
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          children: [
            if (spacingForText!)
              SizedBox(
                width: size.width * 0.18,
              ),
            const Flexible(
              child: CustomTextWidget(
                text:
                    "I am a self-taught Developer who can create apps for iOS, web, and Android. I also have strong backend skills, which help me build scalable and efficient services. I enjoy developing high-quality, user-friendly apps that work well across all platforms.",
                fontSize: medium,
                fontWeight: FontWeight.w200,
              ),
            ),
            if (spacingForText!)
              SizedBox(
                width: size.width * 0.1,
              ),
          ],
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
      ],
    );
  }
}
