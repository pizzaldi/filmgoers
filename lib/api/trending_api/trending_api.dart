import 'package:dio/dio.dart';
import 'package:filmgoers/api/api_service.dart';
import 'package:filmgoers/api/api_url.dart';
import 'package:filmgoers/model/trending/trending_model.dart';

class TrendingApi {
  final Dio _dio = ApiService().dio;
  final ApiUrl _apiUrl = ApiUrl();

  Future<TrendingModel> getTrending(
      {String mediaType = 'all', String timeWindow = 'day'}) async {
    print('getTrending 1');
    final Response<Map<String, dynamic>> response = await _dio.request(
      _apiUrl.getTrendingUrl(mediaType, timeWindow),
      options: Options(method: 'GET'),
    );

    print('getTrending 2');
    return TrendingModel.fromJson(response.data!);
  }
}
