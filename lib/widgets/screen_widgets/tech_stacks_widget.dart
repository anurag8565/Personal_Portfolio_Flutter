import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/components/app_image_widget.dart';

class TechStacksWidget extends StatelessWidget {
  const TechStacksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget circleAvatar({required String imagePath}) {
      return CircleAvatar(
        backgroundColor: bgCircleAvatar,
        radius: 23,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: AppImageWidget(
            path: imagePath,
          ),
        ),
      );
    }

    return Wrap(
      runSpacing: 20,
      spacing: 20,
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      children: [
        const AppImageWidget(
          path: AppImages.flutterIcon,
          imageHeight: 48,
          imageWidth: 48,
        ),
        const AppImageWidget(
          path: AppImages.androidIcon,
          imageHeight: 48,
          imageWidth: 48,
        ),
        circleAvatar(imagePath: AppImages.nodejsIcon),
        const AppImageWidget(
          path: AppImages.javaIcon,
          imageHeight: 48,
          imageWidth: 48,
        ),
        circleAvatar(imagePath: AppImages.dartIcon),
      
        circleAvatar(imagePath: AppImages.pythonIcon),
        const AppImageWidget(
          path: AppImages.kotlinIcon,
          imageHeight: 48,
          imageWidth: 48,
        ),
        const AppImageWidget(
          path: AppImages.mySqlIcon,
          imageHeight: 48,
          imageWidth: 48,
        ),
        circleAvatar(imagePath: AppImages.mongoDbIcon),
        // circleAvatar(imagePath: AppImages.k8Icon),
        circleAvatar(imagePath: AppImages.gitIcon),
        circleAvatar(imagePath: AppImages.firebaseIcon),
        circleAvatar(imagePath: AppImages.figmaIcon),
      
        const AppImageWidget(
          path: AppImages.githubbIcon,
          imageHeight: 48,
          imageWidth: 48,
        ),
        circleAvatar(imagePath: AppImages.lightRoomIcon),
      ],
    );
  }
}
