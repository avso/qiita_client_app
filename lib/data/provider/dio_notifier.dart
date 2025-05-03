import 'package:dio/dio.dart';
import 'package:qiita_client_app/data/provider/qiita_access_token.dart';
import 'package:qiita_client_app/define/const/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/dio_notifier.g.dart';

@riverpod
class DioNotifier extends _$DioNotifier {
  @override
  Dio build() {
    final accessToken = ref.watch(qiitaAccessTokenProvider);

    final dio = Dio();
    dio.options.responseType = ResponseType.json;

    if (accessToken == '') {
      dio.options.headers["Authorization"] = "";
    } else {
      dio.options.headers["Authorization"] = "Bearer $accessToken";
    }
    // コンソールへのログ出力
    if (Const.flavor != 'prd') {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
    return dio;
  }
}
