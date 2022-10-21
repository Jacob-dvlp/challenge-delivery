import '../dependece/imports.dart';
import 'imports.dart';

class GetPostFruitsProviderImp implements GetPostFruitsProviderInterface {
  final GetPostFruitsInterface getPostFruitsRepository;
  GetPostFruitsProviderImp({
    required this.getPostFruitsRepository,
  });
  @override
  Future<List<ResponseApi>> getPost() async {
    final response = await getPostFruitsRepository.getPost();
    return response;
  }
}
