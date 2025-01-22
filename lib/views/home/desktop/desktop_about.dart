import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 200,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Based in Canada"),
              SizedBox(height: 24,),
              Text("Hey, I'm Kenzie Paul", style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 8,),
              Text("AKA KenboDev", style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant
              ),),
            ],
          ),

          SizedBox(height: 24,),

          Text(
            "Front-end & Game Developer",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
            ),
          ),

          SizedBox(height: 4,),

          Text(
              "15 years old",
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant
              )
          ),

          SizedBox(height: 16,),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () async {
                  final Uri url = Uri.parse("https://github.com/Kenz-code");
                  launchUrl(url);
                },
                icon: SvgPicture.asset(
                  "assets/github.svg",
                  width: 24,
                  height: 24,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              SizedBox(width:8),
              IconButton(
                onPressed: () async {
                  final Uri url = Uri.parse("https://kenbodev.itch.io/");
                  launchUrl(url);
                },
                icon: SvgPicture.asset(
                  "assets/itchio.svg",
                  width: 24,
                  height: 24,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
