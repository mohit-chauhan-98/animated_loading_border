import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'trending_gifs.dart';

abstract class _GiphyRepo {
  Future<TrendingGifs> getTrendingGifs();
}

class GiphyRepository implements _GiphyRepo {
  late final Dio _client;

  GiphyRepository() {
    var options = BaseOptions(
      baseUrl: kGiphyBaseUrl,
      contentType: kDefaultContentType,
      connectTimeout: 5000,
      receiveTimeout: 5000,
    );
    _client = Dio(options);
  }

  @override
  Future<TrendingGifs> getTrendingGifs() async {
    try {
      var param = <String, dynamic>{
        kApiKey: kGiphyApiKey,
        kLimit: 20,
      };
      var response = await _client.get(
        kGiphyTrendingUrl,
        queryParameters: param,
      );
      if (response.data != null) {
        var trendingGifs = TrendingGifs.fromJson(response.data);
        return trendingGifs;
      } else {
        throw Exception(kNoData);
      }
    } on DioError catch (error) {
      debugPrint('$kDioErrorOccur : $error');
    } on Exception catch (error) {
      debugPrint('$kExceptionOccur : $error');
    }
    return TrendingGifs();
  }
}
