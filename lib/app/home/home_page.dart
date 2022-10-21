import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/cubit/get_post_fruits_controller_cubit.dart';
import 'widgets/custom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(viewportFraction: 0.35);
  final pageTextController = PageController();
  double currentPage = 0.0;
  int row = 3;
  int col = 2;
  double lowerLimit = 0.0;
  double upperLimit = 1.0;
  double valueSet = 0.001;
  final duration = const Duration(milliseconds: 500);

  void coffeScroList() => setState(() {
        currentPage = pageController.page!;
      });

  void textScroController() => currentPage;

  @override
  void initState() {
    pageController.addListener(coffeScroList);
    pageTextController.addListener(textScroController);
    super.initState();
  }

  @override
  void dispose() {
    pageController.removeListener(coffeScroList);
    pageTextController.removeListener(textScroController);
    pageController.dispose();
    pageTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Container(
          child: BlocBuilder<GetPostFruitsControllerCubit,
              GetPostFruitsControllerState>(
            builder: (context, state) {
              if (state is GetPostFruitsControllerLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is GetPostFruitsControllerError) {
                return const Center(
                  child: Text('Erro na API'),
                );
              }
              if (state is GetPostFruitsControllerSuccss) {
                final post = state.responseApi;
                return post.isEmpty
                    ? const Center(
                        child: Text("Sem post"),
                      )
                    : CustomWidget(responseApi: post);
              }
              return Container();
            },
          ),
        ));
  }
}
