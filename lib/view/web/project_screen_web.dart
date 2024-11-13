import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/popins_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/project_1.dart';

class ProjectScreenWeb extends StatelessWidget {
  const ProjectScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.12,
            ),
            const PoppinsTextWidget(
              text: "Projects",
              fontWeight: boldWeight,
              fontSize: large,
              color: projectTitleColor,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const Project1Widget(),
      ],
    );
  }
}
