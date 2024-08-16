import 'package:flutter/material.dart';
import 'package:wishlist/app/colors.dart';
import 'package:wishlist/repositories/repositories.dart';

class WishCard extends StatelessWidget {
  final Wish wish;

  const WishCard({super.key, required this.wish});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 3),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Placeholder()),
              ),
              Text(
                wish.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (wish.price != null)
                Text(
                  '${wish.price} ₽',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
