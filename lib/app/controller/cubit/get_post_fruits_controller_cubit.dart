import 'imports.dart';

part 'get_post_fruits_controller_state.dart';

class GetPostFruitsControllerCubit extends Cubit<GetPostFruitsControllerState> {
 
  final GetPostFruitsProviderInterface fruitsProvider;

  GetPostFruitsControllerCubit({
    required this.fruitsProvider,
  }) : super(GetPostFruitsControllerInitial()) {
    getPost();
  }
  
  Future getPost() async {
    emit(GetPostFruitsControllerLoading());
    try {
      
      final response = await fruitsProvider.getPost();
      emit(GetPostFruitsControllerSuccss(responseApi: response));
    } on SocketOption {
      emit(GetPostFruitsControllerError());
    } catch (e) {
      emit(GetPostFruitsControllerError());
    }
  }
}
