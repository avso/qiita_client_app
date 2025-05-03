import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:qiita_client_app/define/const/constants.dart';

class LgtmBox extends HookConsumerWidget {
  final int likesCount;

  const LgtmBox({
    required this.likesCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppConst.secondaryColor,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          'LGTM $likesCount',
          style: TextStyle(
            color: AppConst.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
