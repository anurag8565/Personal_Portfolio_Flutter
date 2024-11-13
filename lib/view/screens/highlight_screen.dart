import 'package:flutter/material.dart';
import 'package:my_portfolio/view/mobile/hightlight_screen_mobile.dart';
import 'package:my_portfolio/view/web/highlight_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HighlightScreen extends StatelessWidget {
  const HighlightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const HighlightScreenWeb();
      }
      return const HightlightScreenMobile();
    });
  }
}
