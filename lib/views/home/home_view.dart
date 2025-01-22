import 'package:flutter/material.dart';
import 'package:portfolio2/responsive/reponsive_layout.dart';
import 'package:portfolio2/views/home/home_view_desktop.dart';
import 'package:portfolio2/views/home/home_view_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: HomeViewMobile(),
      desktopBody: HomeViewDesktop(),
    );
  }
}
