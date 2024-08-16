import 'package:flutter/material.dart';
import 'package:wishlist/repositories/repositories.dart';
import 'package:wishlist/shared/shared.dart';

class WishItem extends StatelessWidget {
  final Wish wish;

  const WishItem({super.key, required this.wish});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 3),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Placeholder()),
          ),
          const SizedBox(height: 25),
          Text(
            wish.title,
            style: theme.textTheme.headlineMedium,
          ),
          if (wish.description != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  'Описание:',
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 5),
                ExpandableText(
                  text: wish.description!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          if (wish.link != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  'Сылка на товар:',
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  wish.link!,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          if (wish.price != null)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  '${wish.price} ₽',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
