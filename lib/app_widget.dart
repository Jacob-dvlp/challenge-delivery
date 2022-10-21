import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/controller/cubit/get_post_fruits_controller_cubit.dart';
import 'app/home/home_page.dart';
import 'src/dependece/imports.dart';
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
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
