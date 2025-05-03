import 'package:flutter/material.dart';
import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/repository/qiita_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/selected_user.g.dart';

@riverpod
class SelectedUser extends _$SelectedUser {
  @override
  User build() {
    return User();
  }

  void updateState({required User state}) {
    this.state = state;
  }
}

@riverpod
class UserItemList extends _$UserItemList {
  @override
  Future<List<Item>> build() async {
    final selectedUser = ref.watch(selectedUserProvider);
    final getUserItemList = await ref.watch(qiitaRepositoryProvider).getUserItemList(userId: selectedUser.id!);

    var itemList = <Item>[];
    getUserItemList.when(
      success: (data) {
        itemList = [...data];
      },
      failure: (error) {
        debugPrint('Error: $error');
      },
    );

    return itemList;
  }
}
