import 'imports.dart';

final getIt = GetIt.instance;

initInject() {
  getIt.registerFactory<HttpService>(
    () => HttpServicesImplement(),
  );

  getIt.registerLazySingleton(
    () => GetPostFruitsControllerCubit(
      fruitsProvider: getIt.call(),
    ),
  );

  getIt.registerLazySingleton<GetPostFruitsInterface>(
    () => GetPostFruitsRepositoryImp(
      httpService: getIt.call(),
    ),
  );
  getIt.registerLazySingleton<GetPostFruitsProviderInterface>(
    () => GetPostFruitsProviderImp(
      getPostFruitsRepository: getIt.call(),
    ),
  );
}
