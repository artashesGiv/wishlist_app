import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wishlist/app/colors.dart';
import 'package:wishlist/app/router.gr.dart';

const int DASHBOARD_INDEX = 0;
const int NOTIFICATION_INDEX = 1;
const int FRIENDS_INDEX = 2;
const int PROFILE_INDEX = 3;

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DashboardRoute(),
        NotificationRoute(),
        FriendsRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        onTabNavigation(index) {
          tabsRouter.setActiveIndex(index);
        }

        DateTime now = DateTime.now();
        String formattedDate = DateFormat('dd.MM.yyyy').format(now);

        return Scaffold(
          body: child,
          appBar: AppBar(
            title: Text(formattedDate),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                AutoRouter.of(context).push(const SettingsRoute());
              },
            ),
          ),
          bottomNavigationBar: BottomAppBar(
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
          ),
          floatingActionButton: SizedBox(
            width: 70,
            height: 70,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment',
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
