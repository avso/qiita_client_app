import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserProfileIcon extends ConsumerWidget {
  final double size;
  final String profileImageUrl;

  const UserProfileIcon({
    super.key,
    required this.size,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(
        profileImageUrl,
        width: size,
        height: size,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: size,
            height: size,
            color: Colors.grey,
          );
        },
      ),
    );
  }
}
