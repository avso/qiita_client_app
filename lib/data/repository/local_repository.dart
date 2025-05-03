import 'package:qiita_client_app/data/app_error.dart';
import 'package:qiita_client_app/data/model/access_token.dart';
// import 'package:qiita_client_app/data/model/access_token_request_params.dart';
import 'package:qiita_client_app/data/model/result.dart';
import 'package:qiita_client_app/data/remote/local_data_source.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/local_repository.g.dart';

final dataSourceProvider = Provider<LocalDataSource>((ref) => throw UnimplementedError());

@riverpod
LocalRepository localRepository(LocalRepositoryRef ref) {
  // Provider((ref) => QiitaRepository(ref.watch(dataSourceProvider)));
  return LocalRepository(ref.watch(localDataSourceProvider));
}

class LocalRepository {
  LocalRepository(this._dataSource);

  final LocalDataSource _dataSource;

  Future<Result<AccessToken>> getAccessTokenFromCallbackUri({
    required Uri uri,
  }) {
    String code = uri.queryParameters['code'] ?? '';

    // AccessTokenRequestParams params = AccessTokenRequestParams(
    //   clientId: QiitaConst.clientId,
    //   clientSecret: QiitaConst.clientSecret,
    //   code: code,
    // );

    return _dataSource
        .getAccessToken(
          QiitaConst.clientId,
          QiitaConst.clientSecret,
          code,
        )
        .then((data) => Result<AccessToken>.success(data: data))
        .catchError((error) => Result<AccessToken>.failure(error: AppError(error)));
  }
}
