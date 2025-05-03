import 'package:flutter/material.dart';
import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/provider/logout.dart';
import 'package:qiita_client_app/data/repository/qiita_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/item_list.g.dart';

@riverpod
class ItemList extends _$ItemList {
  @override
  Future<List<Item>> build() async {
    // ページ数を取得
    final page = ref.watch(itemListPageProvider);
    // ページ0が指定された場合は現在のリストを維持
    if (page == 0) {
      return state.value!;
    }

    // 絞り込み条件を取得
    final filter = ref.watch(selectedItemListFilterProvider);

    List<Item> itemList = <Item>[];
    final getItemList = await ref.read(qiitaRepositoryProvider).getItemList(page: page, tag: filter);
    getItemList.when(
      success: (data) {
        if (page == 1) {
          // リストの末尾にローディング表示用の空のItemを追加
          itemList = [...data, Item()];
        } else {
          // 現在リストの末尾にあるローディング表示用の空のItemを除去しておく
          state.value!.removeLast();
          // リストの末尾にローディング表示用の空のItemを追加
          itemList = [...state.value!, ...data, Item()];
        }
      },
      failure: (error) {
        debugPrint('Error: $error');
      },
    );

    return itemList;
  }

  void updateState({required List<Item> state}) {
    this.state = AsyncData(state);
  }
}

@riverpod
class ItemListPage extends _$ItemListPage {
  @override
  int build() {
    ref.watch(logoutProvider);

    return 1;
  }

  void updateState({required int state}) {
    this.state = state;
  }

  void setNextPage() {
    state += 1;
  }
}

@riverpod
class SelectedItem extends _$SelectedItem {
  @override
  Item build() {
    return Item();
  }

  void updateState({required Item state}) {
    this.state = state;
  }
}

@Riverpod(keepAlive: true)
class SelectedItemListFilter extends _$SelectedItemListFilter {
  @override
  String? build() {
    return '';
  }

  void updateState({required String? state}) {
    this.state = state;
  }
}
