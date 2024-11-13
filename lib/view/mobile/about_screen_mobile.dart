import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/app_image_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/intro_title_details_widget.dart';

class AboutScreenMobile extends StatelessWidget {
  const AboutScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.07,
        ),
        AppImageWidget(
          path: AppImages.profileImage,
          imageHeight: size.width * 0.48,
        ),
        const SizedBox(
          height: 30,
        ),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: GoogleFonts.preahvihear(
              fontSize: mediumLarge,
              fontWeight: hardBoldWeight,
              color: white,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: "Hello! I Am ",
                style: TextStyle(),
              ),
              TextSpan(
                text: "Anurag Singh",
                style: TextStyle(
                  color: purple,
                ),
              ),
            ],
          ),
        ),
        const IntroTitleDetailsWidget(
          spacingForText: false,
        ),
      ],
    );
  }
}
