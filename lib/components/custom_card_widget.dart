import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/components/app_image_widget.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.desc,
    this.begin,
    this.end,
    this.cardWidth,
  });

  final String imagePath;
  final String title;
  final String desc;
  final double? cardWidth;
  final AlignmentGeometry? begin;
  final AlignmentGeometry? end;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * (cardWidth ?? 0.4),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: purple,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: const Border(top: BorderSide(color: purple, width: 3)),
        gradient: LinearGradient(
          colors: const [
            purpleGradient1,
            purpleGradient2,
            purpleGradient3,
            purpleGradient4,
            purpleGradient5,
          ],
          begin: begin ?? Alignment.topLeft,
          end: end ?? Alignment.bottomRight,
          stops: const [
            0.07,
            0.34,
            0.57,
            0.85,
            1.0,
          ],
        ),
      ),
      child: Row(
        children: [
          AppImageWidget(
            imageWidth: 100,
            imageHeight: 100,
            path: imagePath,
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: title,
                  fontSize: mediumLarge,
                  // textOverflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                  text: desc,
                  fontSize: medium,
                  maxLines: 3,
                  // textOverflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
