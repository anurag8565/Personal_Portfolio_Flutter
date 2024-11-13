import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 10,
      endIndent: 10,
      thickness: 0.5,
      color: greyDividerLineColor,
    );
  }
}
