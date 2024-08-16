import 'package:auto_route/auto_route.dart';

import './router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(page: DashboardRoute.page),
          AutoRoute(page: FriendsRoute.page),
          AutoRoute(page: NotificationRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: WishRoute.page),
        CustomRoute(
          page: AddWishRoute.page,
          fullscreenDialog: true,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ];
}
