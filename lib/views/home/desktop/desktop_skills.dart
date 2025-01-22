import 'package:flutter/material.dart';
import 'package:portfolio2/views/home/widgets/widget_skill.dart';
import 'package:portfolio2/views/home/widgets/widget_skill_list.dart';

class DesktopSkills extends StatelessWidget {
  const DesktopSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My skills", style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold
          ),),

          SizedBox(height: 16,),

          Text(
            "These are the tools and technologies I use to craft effective, scalable solutions.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          SizedBox(height: 48,),

          Center(child: WidgetSkillList())
        ],
      ),
    );
  }
}
