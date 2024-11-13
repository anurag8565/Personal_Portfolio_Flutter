import 'package:flutter/material.dart';
import 'package:my_portfolio/components/custom_divider.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/components/popins_text_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key, required this.scrollToIndex});
  final void Function(int index) scrollToIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: PoppinsTextWidget(
                text: "Anurag Singh",
                fontSize: mediumLarge,
              ),
            ),
            const CustomDivider(),
            ListTile(
              leading: const Icon(
                Icons.account_circle_rounded,
                color: white,
              ),
              title: const PoppinsTextWidget(
                text: 'About',
                fontSize: mediumLarge,
              ),
              onTap: () => scrollToIndex(0),
            ),
            ListTile(
              leading: const Icon(
                Icons.search,
                color: white,
              ),
              title: const PoppinsTextWidget(
                text: 'Highlights',
                fontSize: mediumLarge,
              ),
              onTap: () => scrollToIndex(1),
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_page,
                color: white,
              ),
              title: const PoppinsTextWidget(
                text: 'Contact',
                fontSize: mediumLarge,
              ),
              onTap: () => scrollToIndex(2),
            ),
          ],
        ),
      ),
    );
  }
}
