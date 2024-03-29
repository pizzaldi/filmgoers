import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  late Dio _dioClient;

  ApiService._internal() {
    _dioClient = Dio();
    _dioClient.interceptors.add(PrettyDioLogger());
  }

  static final ApiService _instance = ApiService._internal();

  factory ApiService() {
    return _instance;
  }

  Dio get dio => _dioClient;
}
