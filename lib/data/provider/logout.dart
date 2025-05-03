import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/logout.g.dart';

@riverpod
class Logout extends _$Logout {
  @override
  DateTime? build() {
    return null;
  }

  void updateState({required DateTime state}) {
    this.state = state;
  }
}
