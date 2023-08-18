import 'package:flutter/material.dart';

import 'main_nav_item.dart';

class LeftPaneWidget extends StatelessWidget {
  final int selected;
  final Function mainNavAction;
  const LeftPaneWidget({
    super.key,
    required this.selected,
    required this.mainNavAction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.white,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'The Movie HQ',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              const SizedBox(height: 10.0),
              const Divider(
                color: Colors.white24,
                thickness: 3.0,
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MainNavItem("New Releases", Icons.rocket_launch_outlined,
                  selected == 1, () => mainNavAction(1,)),
              MainNavItem("Most Popular", Icons.emoji_events_outlined,
                  selected == 2, () => mainNavAction(2,)),
              MainNavItem("Recommended", Icons.verified_outlined, selected == 3,
                  () => mainNavAction(3,)),
              MainNavItem("Top Chart", Icons.diamond_outlined, selected == 4,
                  () => mainNavAction(4,)),
            ],
          ),
        ),
      ],
    );
  }
}
