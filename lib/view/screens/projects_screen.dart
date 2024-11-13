import 'package:flutter/material.dart';
import 'package:my_portfolio/view/web/project_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return   ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return const ProjectScreenWeb();
      }
      return const SizedBox();
    });
  }
}