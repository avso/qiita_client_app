import 'package:qiita_client_app/data/provider/dio_notifier.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'package:qiita_client_app/data/model/access_token.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/local_data_source.g.dart';

@riverpod
LocalDataSource localDataSource(LocalDataSourceRef ref) {
  return LocalDataSource(
    ref.watch(dioNotifierProvider),
  );
}

@RestApi(baseUrl: "http://10.0.2.2/api/v2")
abstract class LocalDataSource {
  factory LocalDataSource(Dio dio, {String baseUrl}) = _LocalDataSource;

  // static const _jsonHeader = "Content-Type: application/json";
  // static const _jsonHeaders = <String, dynamic>{
  //   'Accept-Language': 'ja,en-US;q=0.9,en;q=0.8',
  //   'Accept-Encoding': 'gzip, deflate, br',
  //   'Sec-Fetch-Dest': 'empty',
  //   'Sec-Fetch-Mode': 'cors',
  //   'Sec-Fetch-Site': 'none',
  //   'Accept': '*/*',
  //   'Sec-Ch-Ua-Platform': 'Windows',
  //   'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36',
  //   'Sec-Ch-Ua-Mobile': '?0',
  //   'Content-Type': 'application/json',
  //   'Sec-Ch-Ua': '"Not/A)Brand";v="99", "Google Chrome";v="115", "Chromium";v="115"',
  //   'Content-Length': '178',
  //   'Connection': 'keep-alive',
  // };

  @POST('/api_test.php')
  // @Header(_jsonHeader)
  // @Headers(_jsonHeaders)
  Future<AccessToken> getAccessToken(
    @Field('client_id') String clientId,
    @Field('client_secret') String clientSecret,
    @Field('code') String code,
    // @Body() Map<String, dynamic> json,
  );
}
