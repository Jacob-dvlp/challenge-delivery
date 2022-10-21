import 'imports.dart';

final getIt = GetIt.instance;

initInject() {
  getIt.registerLazySingleton<HttpService>(
    () => HttpServicesImplement(),
  );

  getIt.registerFactory(
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
