import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wishlist/features/feature.dart';

@RoutePage()
class AddWishScreen extends StatefulWidget {
  const AddWishScreen({super.key});

  @override
  State<AddWishScreen> createState() => _AddWishScreenState();
}

class _AddWishScreenState extends State<AddWishScreen> {
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
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: EditorForm(),
        ));
  }
}
