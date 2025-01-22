import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio2/utils/constants/app_constants.dart';
import 'package:portfolio2/widgets/hover_card.dart';
import 'package:url_launcher/url_launcher.dart';

class WidgetSkill extends StatelessWidget {
  final String title;
  final String subtitle;
  final String assetName;
  final String website;
  final Color? iconColor;

  const WidgetSkill({
    super.key,
    required this.title,
    required this.subtitle,
    required this.assetName,
    required this.website,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      config: BaseAnimationConfig(
        delay: 100.ms,
        duration: 500.milliseconds,
        child: GestureDetector(
          onTap: () {
            final Uri url = Uri.parse(website);
            launchUrl(url);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              HoverCard(
                child: Card.filled(
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: kDefaultBorderRadius
                  ),
                  child: Container(
                    width: 260,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          assetName,
                          width: 48,
                          height: 48,
                          color: iconColor,
                        ),

                        SizedBox(width: 16,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              color: Theme.of(context).colorScheme.onSurface
                            ),),
                            SizedBox(height: 8),
                            Text(subtitle),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
