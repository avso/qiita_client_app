import 'package:qiita_client_app/data/app_error.dart';
import 'package:qiita_client_app/data/model/access_token.dart';
import 'package:qiita_client_app/data/model/item.dart';
import 'package:qiita_client_app/data/model/result.dart';
import 'package:qiita_client_app/data/model/user.dart';
import 'package:qiita_client_app/data/remote/qiita_data_source.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/qiita_repository.g.dart';

@riverpod
QiitaRepository qiitaRepository(QiitaRepositoryRef ref) {
  return QiitaRepository(ref.read(qiitaDataSourceProvider));
}

class QiitaRepository {
  QiitaRepository(this._dataSource);

  final QiitaDataSource _dataSource;

  // コールバックURIからアクセストークンを取得
  Future<Result<AccessToken>> getAccessTokenFromCallbackUri({
    required Uri uri,
  }) async {
    String code = uri.queryParameters['code'] ?? '';

    return await _dataSource
        .getAccessToken(
          QiitaConst.clientId,
          QiitaConst.clientSecret,
          code,
        )
        .then((data) => Result<AccessToken>.success(data: data))
        .catchError((error) => Result<AccessToken>.failure(error: AppError(error)));
  }

  // ログインユーザー情報を取得
  Future<Result<User>> getAuthenticatedUser() async {
    // return await Result.guardFuture(() async => _dataSource.getAuthenticatedUser());
    return await _dataSource
        .getAuthenticatedUser()
        .then(
          (data) => Result<User>.success(data: data),
        )
        .catchError(
          (error) => Result<User>.failure(error: AppError(error)),
        );
  }

  // 投稿リストを取得
  Future<Result<List<Item>>> getItemList({
    required int page,
    String? tag = '',
  }) async {
    String? query;
    if (tag != '') {
      query = 'tag:$tag';
    }

    return await _dataSource
        .getItemList(
          page,
          query,
        )
        .then((data) => Result<List<Item>>.success(data: data))
        .catchError((error) => Result<List<Item>>.failure(error: AppError(error)));
  }

  // ユーザーの投稿一覧を取得
  Future<Result<List<Item>>> getUserItemList({
    required String userId,
  }) async {
    return await _dataSource
        .getUserItemList(
          userId,
        )
        .then((data) => Result<List<Item>>.success(data: data))
        .catchError((error) => Result<List<Item>>.failure(error: AppError(error)));
  }
}
