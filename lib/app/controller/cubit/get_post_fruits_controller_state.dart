part of 'get_post_fruits_controller_cubit.dart';

abstract class GetPostFruitsControllerState extends Equatable {
  const GetPostFruitsControllerState();
  @override
  List<Object?> get props => [];
}

class GetPostFruitsControllerInitial extends GetPostFruitsControllerState {
  @override
  List<Object?> get props => [];
}

class GetPostFruitsControllerLoading extends GetPostFruitsControllerState {
  @override
  List<Object?> get props => [];
}

class GetPostFruitsControllerSuccss extends GetPostFruitsControllerState {
  final List<ResponseApi> responseApi;

  const GetPostFruitsControllerSuccss({required this.responseApi});
  @override
  List<Object?> get props => [responseApi];
}

class GetPostFruitsControllerError extends GetPostFruitsControllerState {
  @override
  List<Object?> get props => [];
}
