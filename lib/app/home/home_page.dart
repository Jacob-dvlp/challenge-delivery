import 'package:delivery_application/app/controller/cubit/get_post_fruits_controller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    : ListView.builder(
                        itemBuilder: (context, index) {
                          return const Center(
                            child: Text('Postagem'),
                          );
                        },
                      );
              }
              return Container();
            },
          ),
        ));
  }
}
