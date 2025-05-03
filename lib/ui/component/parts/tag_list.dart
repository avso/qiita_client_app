import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:qiita_client_app/data/model/tag.dart';
import 'package:qiita_client_app/define/const/constants.dart';

class TagList extends HookConsumerWidget {
  final List<Tag> tags;

  const TagList({
    required this.tags,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: tags.map((tag) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Chip(
                label: Text(tag.name ?? ''),
                labelStyle: TextStyle(color: Colors.white),
                backgroundColor: AppConst.secondaryColor,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
