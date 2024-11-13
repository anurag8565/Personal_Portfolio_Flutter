import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/constants/font_weight.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/highlight_details_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/highlights_cards.dart';
import 'package:my_portfolio/widgets/screen_widgets/tech_stacks_widget.dart';

class HightlightScreenMobile extends StatelessWidget {
  const HightlightScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Row(
          children: [
            SizedBox(
              width: 11,
            ),
            CustomTextWidget(
              text: "Highlights",
              fontSize: large,
              fontWeight: hardBoldWeight,
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: HighlightsCards(
            cardDisplayDirection: Axis.vertical,
            cardWidth: 1,
          ),
        ),
        SizedBox(
          height: 80,
        ),
        HighlightDetailsWidget(
          spacingForText: false,
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 50,
        ),
        TechStacksWidget(),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
