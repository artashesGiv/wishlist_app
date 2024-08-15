import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onPressed;

  const MainAppBar({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String date = DateFormat('dd.MM.yyyy').format(now);

    return AppBar(
      title: Text(date),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.settings),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
