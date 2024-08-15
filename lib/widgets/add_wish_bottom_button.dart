import 'package:flutter/material.dart';

class AddWishBottomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddWishBottomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        onPressed: onPressed,
        tooltip: 'Increment',
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
