import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:portfolio2/views/home/desktop/desktop_footer.dart';
import 'package:portfolio2/views/home/mobile/mobile_about.dart';
import 'package:portfolio2/views/home/mobile/mobile_projects.dart';
import 'package:portfolio2/views/home/mobile/mobile_skills.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16,),
          
              FadeIn(
                config: BaseAnimationConfig(
                  delay: 100.ms,
                  duration: 500.milliseconds,
                  child: MobileAbout(),
                ),
              ),
          
              SizedBox(height: 300),
          
              FadeIn(
                config: BaseAnimationConfig(
                  delay: 100.ms,
                  duration: 500.milliseconds,
                  child: MobileSkills(),
                ),
              ),

              SizedBox(height: 200),

              FadeIn(
                config: BaseAnimationConfig(
                  delay: 100.ms,
                  duration: 500.milliseconds,
                  child: MobileProjects(),
                ),
              ),

              DesktopFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
