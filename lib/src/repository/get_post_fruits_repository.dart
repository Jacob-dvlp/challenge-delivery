import 'imports.dart';

class GetPostFruitsRepositoryImp implements GetPostFruitsInterface {
  final HttpService httpService;
  List<ResponseApi> produtos = [];
  GetPostFruitsRepositoryImp({
    required this.httpService,
  });
  @override
  Future<List<ResponseApi>> getPost() async {
    final response = await httpService.get(urlProducts);
    final model = response.body;
    final convert = responseApiFromJson(model);
    produtos = convert;
    return produtos;
  }
}
