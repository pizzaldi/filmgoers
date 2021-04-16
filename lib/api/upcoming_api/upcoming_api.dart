import 'package:dio/dio.dart';
import 'package:filmgoers/api/api_service.dart';
import 'package:filmgoers/api/api_url.dart';
import 'package:filmgoers/model/upcoming/upcoming_model.dart';

class UpcomingApi {
  final Dio _dio = ApiService().dio;
  final ApiUrl _apiUrl = ApiUrl();

  Future<UpcomingModel> getUpcoming() async {
    final Response<Map<String, dynamic>> response = await _dio.request(
      _apiUrl.getUpcomingUrl(),
      options: RequestOptions(method: 'GET'),
    );

    return UpcomingModel.fromJson(response.data);
  }
}
