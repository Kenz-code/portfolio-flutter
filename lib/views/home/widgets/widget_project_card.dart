import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio2/utils/constants/app_constants.dart';
import 'package:portfolio2/utils/desktop_padding.dart';
import 'package:portfolio2/utils/project_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetProjectCard extends StatefulWidget {
  final ProjectUtils projectUtils;
  final bool onDesktop;

  const WidgetProjectCard({super.key, required this.projectUtils, this.onDesktop=true});

  @override
  State<WidgetProjectCard> createState() => _WidgetProjectCardState();
}

class _WidgetProjectCardState extends State<WidgetProjectCard> with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _textSlideAnimation;
  late Animation<double> _imageDarkenAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    // Define animations
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.03).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc),
    );

    _textSlideAnimation = Tween<double>(begin: -1.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc),
    );

    _imageDarkenAnimation = Tween<double>(begin: 0.0, end: 0.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCirc),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });

    if (isHovered) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    final double padding = DesktopPadding.getDesktopPadding(MediaQuery.sizeOf(context).width);

    double cardWidth = (width - (padding * 2) - 32 - 64) / 2;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          final Uri url = Uri.parse(widget.projectUtils.link!);
          launchUrl(url);
        },
        child: MouseRegion(
          onEnter: (_) => _onHover(true),
          onExit: (_) => _onHover(false),
          cursor: SystemMouseCursors.click,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              width: widget.onDesktop ? cardWidth : null,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: kDefaultBorderRadius,
                      ),
                      child: Stack(
                        children: [
                          AnimatedBuilder(
                            animation: _imageDarkenAnimation,
                            builder: (context, child) {
                              return ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withValues(alpha: _imageDarkenAnimation.value),
                                  BlendMode.darken
                                ),
                                child: Image.asset(
                                  widget.projectUtils.image,
                                  width: double.infinity,
                                  fit: BoxFit.fitWidth,
                                ),
                              );
                            }
                          ),

                          AnimatedBuilder(
                            animation: _textSlideAnimation,
                            builder: (context, child) {
                              return Positioned(
                                left: 0,
                                bottom: _textSlideAnimation.value * 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Learn more",
                                        style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                          shadows: [
                                            Shadow(
                                              color: Colors.black.withOpacity(0.5), // Shadow color
                                              offset: Offset(2, 2), // Shadow position (right and down)
                                              blurRadius: 4, // Shadow blur
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(width: 8,),

                                      Icon(
                                        Icons.open_in_new_rounded,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black.withOpacity(0.5), // Shadow color
                                            offset: Offset(2, 2), // Shadow position (right and down)
                                            blurRadius: 4, // Shadow blur
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16,),

                    Text(widget.projectUtils.title, style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),),

                    SizedBox(height: 8,),

                    Text(widget.projectUtils.subtitle, style: Theme.of(context).textTheme.labelLarge,),

                    SizedBox(height: 8,),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        children: List.generate(
                          widget.projectUtils.languages.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              widget.projectUtils.languages[index].icon,
                              width: 24,
                              height: 24,
                            ),
                          ),
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
