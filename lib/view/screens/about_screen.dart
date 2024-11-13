import 'package:flutter/material.dart';
import 'package:my_portfolio/view/mobile/about_screen_mobile.dart';
import 'package:my_portfolio/view/web/about_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const AboutScreenWeb();
        }
        return const AboutScreenMobile();
      },
    );
  }
}
