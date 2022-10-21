import 'package:http/http.dart' as http;

import 'imports.dart';

class HttpServicesImplement implements HttpService {
  @override
  Future<http.Response> get<T>(String path) {
    return http.get(
      Uri.parse("$baseUrl/$path"),
    );
  }
}
