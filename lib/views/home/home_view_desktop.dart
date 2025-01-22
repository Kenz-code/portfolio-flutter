import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:portfolio2/utils/desktop_padding.dart';
import 'package:portfolio2/views/home/desktop/desktop_about.dart';
import 'package:portfolio2/views/home/desktop/desktop_footer.dart';
import 'package:portfolio2/views/home/desktop/desktop_projects.dart';
import 'package:portfolio2/views/home/desktop/desktop_skills.dart';

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final double padding = DesktopPadding.getDesktopPadding(MediaQuery.sizeOf(context).width);

    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(left: padding, right: padding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32,),
          
              FadeIn(
                config: BaseAnimationConfig(
                  delay: 100.ms,
                  duration: 500.milliseconds,
                  child: DesktopAbout(),
                ),
              ),
          
              SizedBox(height: 400),
          
              FadeIn(
                config: BaseAnimationConfig(
                  delay: 100.ms,
                  duration: 500.milliseconds,
                  child: DesktopSkills(),
                ),
              ),
          
              SizedBox(height: 400),
          
              FadeIn(
                config: BaseAnimationConfig(
                  delay: 100.ms,
                  duration: 500.milliseconds,
                  child: DesktopProjects(),
                ),
              ),

              DesktopFooter(),
            ],
          ),
        )
      ),
    );
  }
}
