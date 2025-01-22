import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:portfolio2/utils/project_utils.dart';
import 'package:portfolio2/views/home/widgets/widget_project_card.dart';

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

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

          Column(
            children: [
              FadeIn(
                config: BaseAnimationConfig(
                  duration: 500.milliseconds,
                  curves: Curves.easeInOutCirc,
                  child: WidgetProjectCard(
                    onDesktop: false,
                    projectUtils: projectUtilsItems[2],
                  ),
                ),
              ),

              SizedBox(height: 32,),

              FadeIn(
                config: BaseAnimationConfig(
                  duration: 500.milliseconds,
                  curves: Curves.easeInOutCirc,
                  child: WidgetProjectCard(
                    onDesktop: false,
                    projectUtils: projectUtilsItems[0],
                  ),
                ),
              ),

              SizedBox(height: 32,),

              FadeIn(
                config: BaseAnimationConfig(
                  duration: 500.milliseconds,
                  curves: Curves.easeInOutCirc,
                  child: WidgetProjectCard(
                    onDesktop: false,
                    projectUtils: projectUtilsItems[1],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
