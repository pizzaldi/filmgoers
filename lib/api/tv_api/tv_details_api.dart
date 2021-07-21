import 'package:dio/dio.dart';
import 'package:filmgoers/api/api_service.dart';
import 'package:filmgoers/api/api_url.dart';
import 'package:filmgoers/model/tv/tv_details_model.dart';

class TvDetailsApi {
  final Dio _dio = ApiService().dio;
  final ApiUrl _apiUrl = ApiUrl();

  Future<TvDetailsModel> getTvDetails(int tvId) async {
    final Response<Map<String, dynamic>> response = await _dio
        .request(_apiUrl.getTvDetails(tvId), options: Options(method: 'GET'));

    return TvDetailsModel.fromJson(response.data);
  }
}
