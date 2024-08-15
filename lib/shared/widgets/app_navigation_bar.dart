import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wishlist/app/colors.dart';

const int DASHBOARD_INDEX = 0;
const int NOTIFICATION_INDEX = 1;
const int FRIENDS_INDEX = 2;
const int PROFILE_INDEX = 3;

class AppNavigationBar extends StatelessWidget {
  final TabsRouter tabsRouter;

  const AppNavigationBar({super.key, required this.tabsRouter});

  onTabNavigation(index) {
    tabsRouter.setActiveIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8,
      color: brandColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            color: tabsRouter.activeIndex == DASHBOARD_INDEX
                ? whiteColor
                : darkGreyColor,
            iconSize: 30,
            icon: const Icon(Icons.dashboard),
            onPressed: () => onTabNavigation(DASHBOARD_INDEX),
          ),
          IconButton(
              color: tabsRouter.activeIndex == NOTIFICATION_INDEX
                  ? whiteColor
                  : darkGreyColor,
              iconSize: 30,
              icon: const Icon(Icons.notifications),
              onPressed: () => onTabNavigation(NOTIFICATION_INDEX)),
          const SizedBox(width: 48.0),
          IconButton(
              color: tabsRouter.activeIndex == FRIENDS_INDEX
                  ? whiteColor
                  : darkGreyColor,
              iconSize: 30,
              icon: const Icon(Icons.group),
              onPressed: () => onTabNavigation(FRIENDS_INDEX)),
          IconButton(
              color: tabsRouter.activeIndex == PROFILE_INDEX
                  ? whiteColor
                  : darkGreyColor,
              iconSize: 30,
              icon: const Icon(Icons.person),
              onPressed: () => onTabNavigation(PROFILE_INDEX)),
        ],
      ),
    );
  }
}
