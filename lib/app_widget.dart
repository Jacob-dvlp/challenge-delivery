import 'imports.dart';
import 'src/dependece/inject_dependeces.dart' as dependece;

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => dependece.getIt<GetPostFruitsControllerCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        initialRoute: '/',
      ),
    );
  }
}
