import 'package:flutter/material.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(64.0),
      child: Text("Made with Flutter by KenboDev"),
    );
  }
}
