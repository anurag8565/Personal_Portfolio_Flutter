import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/components/custom_card_widget.dart';

class HighlightsCards extends StatelessWidget {
  const HighlightsCards({super.key, this.cardDisplayDirection, this.cardWidth});
  final Axis? cardDisplayDirection;
  final double? cardWidth;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20,
      spacing: 20,
      direction: cardDisplayDirection ?? Axis.horizontal,
      
      children: [
        CustomCardWidget(
          imagePath: AppImages.starIcon,
          title: "App Development Expertise",
          desc:
              "Expert in creating cross-platform mobile applications using Flutter and native Android. Delivering high-performance, user-friendly apps.",
          cardWidth: cardWidth,
        ),
        CustomCardWidget(
          imagePath: AppImages.cupIcon,
          title: "completed Intern at @Desi QNa",
          desc:
          "Designed and developed a fully responsive website for a section of Desi QnA,focusing on developing an web app.",
          cardWidth: cardWidth,
        ),
        CustomCardWidget(
          imagePath: AppImages.bulbIcon,
          title: "Innovative Solutions",
          desc:
              "Passionate about developing innovative, high-quality applications that enhance user experience and meet business needs.",
          cardWidth: cardWidth,
        ),
        CustomCardWidget(
          imagePath: AppImages.pickerIcon,
          title: "Tech Researcher",
          desc:
              "Skilled in researching and analyzing emerging technologies to drive innovation.",
          cardWidth: cardWidth,
        ),
      ],
    );
  }
}
