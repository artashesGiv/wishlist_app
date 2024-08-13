import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wishlist/app/router.gr.dart';
import 'package:wishlist/widgets/add_wish_bottom_button.dart';
import 'package:wishlist/widgets/app_navigation_bar.dart';
import 'package:wishlist/widgets/main_app_bar.dart';

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

        void onPressed() {
          AutoRouter.of(context).push(const SettingsRoute());
        }

        return Scaffold(
          body: child,
          appBar: MainAppBar(onPressed: onPressed),
          bottomNavigationBar: AppNavigationBar(
            tabsRouter: tabsRouter,
          ),
          floatingActionButton: const AddWishBottomButton(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
