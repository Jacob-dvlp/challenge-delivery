import 'package:delivery_application/src/model/response_api_model.dart';

abstract class GetPostFruitsProviderInterface {
  Future<List<ResponseApi>> getPost();
}
