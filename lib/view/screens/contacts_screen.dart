import 'package:flutter/material.dart';
import 'package:my_portfolio/view/web/contact_screen_all.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const ContactScreenAll();
      }
      return const ContactScreenAll(
        paddingForText: false,
      );
    });
  }
}
