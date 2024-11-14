import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/components/custom_divider.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/social_media_icons_widgets.dart';
import 'package:rive/rive.dart';

class ContactScreenAll extends StatelessWidget {
  const ContactScreenAll({super.key, this.paddingForText = true});
  final bool? paddingForText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * (paddingForText! ? 0.12 : 0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(
            text: "Contact",
            fontSize: large,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomTextWidget(
            text:
                " I'm eager to explore new opportunities and collaborate on innovative projects. If you're interested in partnering or have any questions ,don't hesitate to get in touch. Let's create something extraordinary together!  ",
            fontSize: medium,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextWidget(
            text: "Mail me: ",
            fontSize: mediumLarge,
            color: purple,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextWidget(
            text: "Anuragsinghas098@gmail.com",
            fontSize: medium,
            color: white,
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextWidget(
            text: "let's connect:",
            fontSize: mediumLarge,
            color: purple,
          ),
          const SizedBox(
            height: 10,
          ),
          const SocialMediaIconsWidget(),
          const SizedBox(
            height: 40,
          ),
          const CustomDivider(),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    style: GoogleFonts.preahvihear(
                      color: white,
                      fontSize: mediumLarge,
                      fontWeight: hardBoldWeight,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: "Coded by ",
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                      TextSpan(
                        text: "Anurag ",
                        style: TextStyle(
                          color: purple,
                        ),
                      ),
                      TextSpan(
                        text: "using Flutter in India",
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (size.width >= 950)
                SizedBox(
                  width: size.width * 0.06,
                  height: size.height * 0.06,
                  child: const RiveAnimation.asset(AppImages.flutterIconRive),
                ),
            ],
          ),

        
        ],
      ),
    );
  }
}
