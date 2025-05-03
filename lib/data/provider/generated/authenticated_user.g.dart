// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../authenticated_user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authenticatedUserHash() => r'aa9e6a79f50eb9cfe3cda4936e4d908f3d587f72';

/// See also [AuthenticatedUser].
@ProviderFor(AuthenticatedUser)
final authenticatedUserProvider =
    AutoDisposeAsyncNotifierProvider<AuthenticatedUser, Result<User>>.internal(
  AuthenticatedUser.new,
  name: r'authenticatedUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticatedUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthenticatedUser = AutoDisposeAsyncNotifier<Result<User>>;
String _$authenticatedUserItemListHash() =>
    r'c854924fd93f1cc29f2cf5b0a65b5df5520c3fd3';

/// See also [AuthenticatedUserItemList].
@ProviderFor(AuthenticatedUserItemList)
final authenticatedUserItemListProvider = AutoDisposeAsyncNotifierProvider<
    AuthenticatedUserItemList, List<Item>>.internal(
  AuthenticatedUserItemList.new,
  name: r'authenticatedUserItemListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authenticatedUserItemListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthenticatedUserItemList = AutoDisposeAsyncNotifier<List<Item>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
