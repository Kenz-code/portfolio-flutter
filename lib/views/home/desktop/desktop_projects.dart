import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:portfolio2/utils/project_utils.dart';
import 'package:portfolio2/views/home/widgets/widget_project_card.dart';

class DesktopProjects extends StatelessWidget {
  const DesktopProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Personal projects", style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold
            ),),
          ),

          SizedBox(height: 48,),

          Row(
            children: [
              Column(
                children: [
                  SlideInLeft(
                    config: BaseAnimationConfig(
                      delay: 100.ms,
                      duration: 500.milliseconds,
                      curves: Curves.easeInOut,
                      child: WidgetProjectCard(
                        projectUtils: projectUtilsItems[2],
                      ),
                    ),
                  ),

                  SizedBox(height: 100,),

                  SlideInLeft(
                    config: BaseAnimationConfig(
                      delay: 100.ms,
                      duration: 500.milliseconds,
                      curves: Curves.easeInOut,
                      child: WidgetProjectCard(
                        projectUtils: projectUtilsItems[1],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(width: 32,),

              Column(
                children: [
                  SizedBox(height: 100,),

                  SlideInRight(
                    config: BaseAnimationConfig(
                      delay: 100.ms,
                      duration: 500.milliseconds,
                      curves: Curves.easeOut,
                      child: WidgetProjectCard(
                        projectUtils: projectUtilsItems[0],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
