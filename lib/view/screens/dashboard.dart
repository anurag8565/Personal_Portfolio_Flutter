import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/constants/app_images.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/font_sizes.dart';
import 'package:my_portfolio/controllers/dashboard_controller.dart';
import 'package:my_portfolio/view/screens/about_screen.dart';
import 'package:my_portfolio/view/screens/contacts_screen.dart';
import 'package:my_portfolio/view/screens/highlight_screen.dart';
import 'package:my_portfolio/view/screens/projects_screen.dart';
import 'package:my_portfolio/components/app_image_widget.dart';
import 'package:my_portfolio/components/custom_text_widget.dart';
import 'package:my_portfolio/widgets/screen_widgets/drawer_widget.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});
  
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final ItemScrollController _scrollController = ItemScrollController();
  DashBoardController dashBoardController = Get.put(DashBoardController());
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void scrollToIndex(int index) {
    dashBoardController.updateIndex(value: index);
    _scrollController.scrollTo(
      index: index,
      duration: const Duration(milliseconds: 800),
      curve: Curves.fastEaseInToSlowEaseOut,
    );
  }

  @override
  void dispose() {
    super.dispose();
    dashBoardController.dispose();
  }

  void openSideMenuDrawer() {
    if (scaffoldKey.currentState != null) {
      scaffoldKey.currentState!.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: bgColor,
      drawer: size.width < 950
          ? Drawer(
              surfaceTintColor: greyDividerLineColor,
              backgroundColor: greyDividerLineColor,
              child: DrawerWidget(
                scrollToIndex: (newIndex) {
                  scaffoldKey.currentState!.closeDrawer();
                  Future.delayed(
                    const Duration(milliseconds: 300),
                    () {
                      scrollToIndex(newIndex);
                    },
                  );
                },
              ),
            )
          : null,
      appBar: size.width >= 950
          ? AppBar(
              title: Container(
                margin: EdgeInsets.only(left: size.width * 0.09),
                child: const AppImageWidget(
                  path: AppImages.AslogosIcon,
                  imageHeight: 90,
                  imageWidth: 90,
                ),
              ),
              actions: [
                Obx(
                  () => TextButton(
                    onPressed: () => scrollToIndex(0),
                    child: CustomTextWidget(
                      text: "About",
                      fontSize: dashBoardController.currentIndex.value == 0
                          ? mediumLarge
                          : medium,
                      color: dashBoardController.currentIndex.value == 0
                          ? purple
                          : white,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                Obx(
                  () => TextButton(
                    onPressed: () => scrollToIndex(1),
                    child: CustomTextWidget(
                      text: "Highlights",
                      fontSize: dashBoardController.currentIndex.value == 1
                          ? mediumLarge
                          : medium,
                      color: dashBoardController.currentIndex.value == 1
                          ? purple
                          : white,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                Obx(
                  () => TextButton(
                    onPressed: () => scrollToIndex(2),
                    child: CustomTextWidget(
                      text: "Projects",
                      fontSize: dashBoardController.currentIndex.value == 2
                          ? mediumLarge
                          : medium,
                      color: dashBoardController.currentIndex.value == 2
                          ? purple
                          : white,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                Obx(
                  () => TextButton(
                    onPressed: () => scrollToIndex(3),
                    child: CustomTextWidget(
                      text: "Contact",
                      fontSize: dashBoardController.currentIndex.value == 3
                          ? mediumLarge
                          : medium,
                      color: dashBoardController.currentIndex.value == 3
                          ? purple
                          : white,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
              ],
              backgroundColor: appBarColor,
            )
          : null,
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
            itemScrollController: _scrollController,
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.07,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const AboutScreen();
                case 1:
                  return const HighlightScreen();
                case 2:
                  return const ProjectsScreen();
                case 3:
                  return const ContactScreen();
                default:
                  return const SizedBox();
              }
            },
          ),
          if (size.width < 950)
            Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                onPressed: () {
                  openSideMenuDrawer();
                },
                icon: const Icon(
                  Icons.menu_rounded,
                  size: 30,
                  color: white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
