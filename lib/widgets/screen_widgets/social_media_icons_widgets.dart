import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
// import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconsWidget extends StatelessWidget {
  const SocialMediaIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 15,
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
  
        socialIcon(
          link: 'https://www.linkedin.com/in/anurag9981/',
          iconPath: SocialIconsFlutter.linkedin,
        ),
        socialIcon(
          link: 'https://github.com/anurag8565',
          iconPath: SocialIconsFlutter.github,
        ),
        socialIcon(
          link: 'https://www.instagram.com/mr_anurag_093/',
          iconPath: SocialIconsFlutter.instagram,
        ),
       
       
      ],
    );
  }

  Widget socialIcon({required String link, required IconData iconPath}) {
    return InkWell(
      onTap: () => launchURL(link),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SocialWidget(
            placeholderText: '',
            iconData: iconPath,
            iconColor: Colors.white,
            link: link,
          ),
        ],
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
