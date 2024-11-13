import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/app_image_widget.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/intro_title_details_widget.dart';
import 'package:rive/rive.dart';

class AboutScreenWeb extends StatelessWidget {
  const AboutScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Row(
          children: [
            const Spacer(),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.8,
              child: const RiveAnimation.asset(AppImages.aboutScreenAnimation),
            ),
          ],
        ),
        IntroTitleDetailsWidget(
          spacingWidget: SizedBox(
            width: size.width * 0.3,
          ),
        ),
        Positioned(
          top: size.height * 0.01,
          left: size.width * 0.04,
          child: SvgPicture.asset(
            AppImages.bgGradientPurple,
            height: size.width * 0.35,
          ),
        ),
        Positioned(
          top: size.height * 0.05,
          left: size.width * 0.07,
          child: SvgPicture.asset(
            AppImages.bgGradientWhite,
            height: size.width * 0.26,
          ),
        ),
        Positioned(
          top: size.height * 0.13,
          left: size.width / 9,
          child: AppImageWidget(
            path: AppImages.profileImage,
            imageHeight: size.width * 0.18,
          ),
        ),
        Positioned(
          top: size.height * 0.03,
          left: size.width * 0.36,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: "Hello! I Am ",
                fontSize: mediumLarge,
                fontWeight: hardBoldWeight,
              ),
              CustomTextWidget(
                text: "Anurag Singh",
                fontSize: mediumLarge,
                color: purple,
              )
            ],
          ),
        ),
        Positioned(
          top: size.height * 0.05,
          left: size.width * 0.3,
          child: SvgPicture.asset(
            AppImages.arrowIcon,
            height: size.width * 0.035,
          ),
        ),
      ],
    );
  }
}
