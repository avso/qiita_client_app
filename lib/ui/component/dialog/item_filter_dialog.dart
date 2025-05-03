import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qiita_client_app/data/provider/item_list.dart';
import 'package:qiita_client_app/define/const/constants.dart';

class ItemFilterSimpleDialog extends HookConsumerWidget {
  const ItemFilterSimpleDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedItemListFilterProvider);

    return SimpleDialog(
      title: const Text('投稿の絞り込み'),
      children: <Widget>[
        SimpleDialogOption(
          child: ListTile(
            leading: selected == '' ? Icon(Icons.check) : SizedBox(),
            iconColor: selected == '' ? AppConst.secondaryColor : Colors.black,
            title: Text('全て表示'),
            textColor: selected == '' ? AppConst.secondaryColor : Colors.black,
          ),
          onPressed: () => context.pop(''),
        ),
        SimpleDialogOption(
          child: ListTile(
            leading: selected == 'flutter' ? Icon(Icons.check) : SizedBox(),
            iconColor: selected == 'flutter' ? AppConst.secondaryColor : Colors.black,
            title: Text('Flutter投稿のみ'),
            textColor: selected == 'flutter' ? AppConst.secondaryColor : Colors.black,
          ),
          onPressed: () => context.pop('flutter'),
        ),
      ],
    );
  }
}
