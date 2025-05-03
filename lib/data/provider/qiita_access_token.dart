import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/qiita_access_token.g.dart';

@Riverpod(keepAlive: true)
class QiitaAccessToken extends _$QiitaAccessToken {
  @override
  String build() {
    return '';
  }

  void updateState({required String state}) {
    this.state = state;
  }
}
