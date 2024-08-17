import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wishlist/features/feature.dart';
import 'package:wishlist/repositories/repositories.dart';

@RoutePage()
class EditWishScreen extends StatefulWidget {
  const EditWishScreen({super.key, required this.wish});

  final Wish wish;

  @override
  State<EditWishScreen> createState() => _EditWishScreenState();
}

class _EditWishScreenState extends State<EditWishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              AutoRouter.of(context).back();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: EditorForm(wish: widget.wish),
        ));
  }
}
