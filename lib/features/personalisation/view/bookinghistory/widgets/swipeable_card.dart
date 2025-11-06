import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../viewmodel/bookinghistory/swipe_provider.dart';

class SwipeableHotelCard extends StatelessWidget {
  final String uniqueKey;
  final Widget child;
  final bool enableSwipe;
  final VoidCallback? onDismissed;

  const SwipeableHotelCard({
    super.key,
    required this.uniqueKey,
    required this.child,
    this.enableSwipe = false,
    this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    if (!enableSwipe) {
      return child;
    }

    return Consumer<SwipeProvider>(
      builder: (context, swipeProvider, _) {
        if (swipeProvider.isDeleted(uniqueKey)) {
          return const SizedBox.shrink();
        }

        return Dismissible(
          key: Key(uniqueKey),
          direction: DismissDirection.endToStart,
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
              size: 32,
            ),
          ),
          onDismissed: (direction) {
            swipeProvider.deleteItem(uniqueKey);
            onDismissed?.call();
          },
          child: child,
        );
      },
    );
  }
}