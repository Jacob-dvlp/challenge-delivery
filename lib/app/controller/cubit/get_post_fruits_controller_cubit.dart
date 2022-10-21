import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../src/dependece/imports.dart';
import '../../../src/model/response_api_model.dart';

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
