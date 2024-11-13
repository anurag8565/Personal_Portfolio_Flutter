import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/app_image_widget.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/highlight_details_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/highlights_cards.dart';
import 'package:my_portfolio/widgets/screen_widgets/tech_stacks_widget.dart';

class HighlightScreenWeb extends StatelessWidget {
  const HighlightScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          left: size.width * 0.33,
          top: size.height * 0.15,
          child: const AppImageWidget(
            path: AppImages.bgGradientPurple,
            // imageWidth: size.width * 0.26,
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.18,
                    ),
                    const CustomTextWidget(
                      text: "Highlights",
                      fontSize: large,
                      fontWeight: hardBoldWeight,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.06,
                    ),
                    const Expanded(
                      child: HighlightsCards(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                const HighlightDetailsWidget(),
                const SizedBox(
                  height: 50,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 350),
                    child: TechStacksWidget(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Stack(
                  children: [
                    Positioned(
                      left: size.width / 3,
                      child: Transform.rotate(
                        angle: 90 * 3.1415926535 / 180,
                        child: AppImageWidget(
                          path: AppImages.bgGradientPurple,
                          imageWidth: size.width * 0.26,
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.4,
                      top: size.height * 0.1,
                      child: AppImageWidget(
                        path: AppImages.purpleCircleIcon,
                        imageWidth: size.width * 0.125,
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.427,
                      top: size.height * 0.147,
                      child: AppImageWidget(
                        path: AppImages.settingsIcon,
                        imageWidth: size.width * 0.07,
                      ),
                    ),
                    Center(
                      child: AppImageWidget(
                        path: AppImages.techGalaxy,
                        imageWidth: size.width * 0.6,
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.28,
                      width: double.infinity,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
