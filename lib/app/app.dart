import 'package:flutter/material.dart';
import 'package:wishlist/app/router.dart';
import 'package:wishlist/app/theme.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightTheme,
      routerConfig:
          _appRouter.config(navigatorObservers: () => [routeObserver]),
    );
  }
}
