import 'package:flutter/material.dart';
import 'package:portfolio2/utils/constants/app_constants.dart';

class HoverCard extends StatefulWidget {
  final Widget child;

  const HoverCard({super.key, required this.child});

  @override
  _HoverCardState createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOutCirc,
        decoration: BoxDecoration(
          borderRadius: kDefaultBorderRadius,
        ),
        child: Center(
          child: AnimatedScale(
            scale: _isHovered ? 1.05 : 1,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOutCirc,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
