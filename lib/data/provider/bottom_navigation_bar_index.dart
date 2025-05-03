import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/bottom_navigation_bar_index.g.dart';

@riverpod
class BottomNavigationBarIndex extends _$BottomNavigationBarIndex {
  @override
  int build() {
    return 0;
  }

  void updateState({required int state}) {
    this.state = state;
  }
}
