import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wishlist/app/router.gr.dart';
import 'package:wishlist/shared/shared.dart';

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

        void goToSettings() {
          AutoRouter.of(context).push(const SettingsRoute());
        }

        void goToAddWish() {
          AutoRouter.of(context).push(const AddWishRoute());
        }

        return Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          body: child,
          appBar: MainAppBar(onPressed: goToSettings),
          bottomNavigationBar: AppNavigationBar(
            tabsRouter: tabsRouter,
          ),
          floatingActionButton: AddWishBottomButton(onPressed: goToAddWish),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
