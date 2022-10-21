import 'package:http/http.dart' as http;

import '../api/api_url.dart';
import 'http_service.dart';

class HttpServicesImplement implements HttpService {
  @override
  Future<http.Response> get<T>(String path) {
    print(path);
    return http.get(
      Uri.parse("$baseUrl/$path"),
    );
  }
}
