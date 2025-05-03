import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qiita_client_app/define/const/constants.dart';

class LikeCountBadge extends ConsumerWidget {
  final int likesCount;

  const LikeCountBadge({
    super.key,
    required this.likesCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipOval(
      child: Container(
        width: 20,
        height: 20,
        color: (likesCount > 0) ? AppConst.secondaryColor : Colors.grey,
        child: Center(
          child: Text(
            '$likesCount',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
