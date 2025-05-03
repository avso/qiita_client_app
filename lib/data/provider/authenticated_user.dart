import 'package:flutter/material.dart';
import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/result.dart';
import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/repository/qiita_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/authenticated_user.g.dart';

@riverpod
class AuthenticatedUser extends _$AuthenticatedUser {
  @override
  Future<Result<User>> build() async {
    return await ref.watch(qiitaRepositoryProvider).getAuthenticatedUser();
  }
}

@riverpod
class AuthenticatedUserItemList extends _$AuthenticatedUserItemList {
  @override
  Future<List<Item>> build() async {
    final authenticatedUser = ref.watch(authenticatedUserProvider).value!.dataOrThrow;
    final getUserItemList = await ref.watch(qiitaRepositoryProvider).getUserItemList(userId: authenticatedUser.id!);

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
