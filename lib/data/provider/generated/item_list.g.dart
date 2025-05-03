// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../item_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemListHash() => r'0d0139a829f6c8b284d592816bbf91bfbaa5219f';

/// See also [ItemList].
@ProviderFor(ItemList)
final itemListProvider =
    AutoDisposeAsyncNotifierProvider<ItemList, List<Item>>.internal(
  ItemList.new,
  name: r'itemListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ItemList = AutoDisposeAsyncNotifier<List<Item>>;
String _$itemListPageHash() => r'f98864bad834df122a92879da698a0eae629dc0b';

/// See also [ItemListPage].
@ProviderFor(ItemListPage)
final itemListPageProvider =
    AutoDisposeNotifierProvider<ItemListPage, int>.internal(
  ItemListPage.new,
  name: r'itemListPageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemListPageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ItemListPage = AutoDisposeNotifier<int>;
String _$selectedItemHash() => r'78c21a806e80f78fdf71a073cf1436238990a23a';

/// See also [SelectedItem].
@ProviderFor(SelectedItem)
final selectedItemProvider =
    AutoDisposeNotifierProvider<SelectedItem, Item>.internal(
  SelectedItem.new,
  name: r'selectedItemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedItemHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedItem = AutoDisposeNotifier<Item>;
String _$selectedItemListFilterHash() =>
    r'6e767865bdd92836a121be89f4060c66b8ad4de9';

/// See also [SelectedItemListFilter].
@ProviderFor(SelectedItemListFilter)
final selectedItemListFilterProvider =
    NotifierProvider<SelectedItemListFilter, String?>.internal(
  SelectedItemListFilter.new,
  name: r'selectedItemListFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedItemListFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedItemListFilter = Notifier<String?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
