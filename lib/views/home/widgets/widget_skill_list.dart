import 'package:flutter/material.dart';
import 'package:portfolio2/views/home/widgets/widget_skill.dart';

class WidgetSkillList extends StatelessWidget {
  const WidgetSkillList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 8,
      spacing: 8,
      children: [
        WidgetSkill(
          title: "Flutter",
          subtitle: "UI toolkit",
          assetName: "assets/flutter.svg",
          website: "https://flutter.dev/",
        ),

        WidgetSkill(
          title: "Dart",
          subtitle: "Programming language",
          assetName: "assets/dart.svg",
          website: "https://dart.dev/",
        ),

        WidgetSkill(
          title: "Penpot",
          subtitle: "Design tool",
          assetName: "assets/penpot.svg",
          website: "https://penpot.app/",
          iconColor: Colors.white,
        ),

        WidgetSkill(
          title: "Godot",
          subtitle: "Game engine",
          assetName: "assets/godot.svg",
          website: "https://godotengine.org/",
        ),

        WidgetSkill(
          title: "Aseprite",
          subtitle: "Pixel editor",
          assetName: "assets/aseprite.svg",
          website: "https://www.aseprite.org/",
        ),

        WidgetSkill(
          title: "Python",
          subtitle: "Programming language",
          assetName: "assets/python.svg",
          website: "https://www.python.org/",
        ),

        WidgetSkill(
          title: "Firebase",
          subtitle: "Backend platform",
          assetName: "assets/firebase.svg",
          website: "https://firebase.google.com/",
        ),

        WidgetSkill(
          title: "Github",
          subtitle: "Version Control",
          assetName: "assets/github.svg",
          website: "https://github.com/",
        ),
      ],
    );
  }
}
