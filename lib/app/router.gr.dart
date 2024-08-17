// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:wishlist/repositories/repositories.dart' as _i12;
import 'package:wishlist/screens/add_wish.dart' as _i1;
import 'package:wishlist/screens/dashboard.dart' as _i2;
import 'package:wishlist/screens/edit_wish.dart' as _i3;
import 'package:wishlist/screens/friends.dart' as _i4;
import 'package:wishlist/screens/home.dart' as _i5;
import 'package:wishlist/screens/notification.dart' as _i6;
import 'package:wishlist/screens/profile.dart' as _i7;
import 'package:wishlist/screens/settings.dart' as _i8;
import 'package:wishlist/screens/wish.dart' as _i9;

/// generated route for
/// [_i1.AddWishScreen]
class AddWishRoute extends _i10.PageRouteInfo<void> {
  const AddWishRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AddWishRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddWishRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddWishScreen();
    },
  );
}

/// generated route for
/// [_i2.DashboardScreen]
class DashboardRoute extends _i10.PageRouteInfo<void> {
  const DashboardRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i3.EditWishScreen]
class EditWishRoute extends _i10.PageRouteInfo<EditWishRouteArgs> {
  EditWishRoute({
    _i11.Key? key,
    required _i12.Wish wish,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          EditWishRoute.name,
          args: EditWishRouteArgs(
            key: key,
            wish: wish,
          ),
          initialChildren: children,
        );

  static const String name = 'EditWishRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditWishRouteArgs>();
      return _i3.EditWishScreen(
        key: args.key,
        wish: args.wish,
      );
    },
  );
}

class EditWishRouteArgs {
  const EditWishRouteArgs({
    this.key,
    required this.wish,
  });

  final _i11.Key? key;

  final _i12.Wish wish;

  @override
  String toString() {
    return 'EditWishRouteArgs{key: $key, wish: $wish}';
  }
}

/// generated route for
/// [_i4.FriendsScreen]
class FriendsRoute extends _i10.PageRouteInfo<void> {
  const FriendsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          FriendsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FriendsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.FriendsScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.NotificationScreen]
class NotificationRoute extends _i10.PageRouteInfo<void> {
  const NotificationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.NotificationScreen();
    },
  );
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i8.SettingsScreen]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SettingsScreen();
    },
  );
}

/// generated route for
/// [_i9.WishScreen]
class WishRoute extends _i10.PageRouteInfo<WishRouteArgs> {
  WishRoute({
    _i11.Key? key,
    required int wishId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          WishRoute.name,
          args: WishRouteArgs(
            key: key,
            wishId: wishId,
          ),
          initialChildren: children,
        );

  static const String name = 'WishRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WishRouteArgs>();
      return _i9.WishScreen(
        key: args.key,
        wishId: args.wishId,
      );
    },
  );
}

class WishRouteArgs {
  const WishRouteArgs({
    this.key,
    required this.wishId,
  });

  final _i11.Key? key;

  final int wishId;

  @override
  String toString() {
    return 'WishRouteArgs{key: $key, wishId: $wishId}';
  }
}
