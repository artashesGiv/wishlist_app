import 'package:flutter/material.dart';
import 'package:wishlist/shared/shared.dart';

class CustomRefreshIndicator extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;

  const CustomRefreshIndicator(
      {super.key, required this.child, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      color: brandColor,
      backgroundColor: whiteColor,
      child: child,
    );
  }
}
