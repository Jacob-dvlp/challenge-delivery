import '../imports.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPostFruitsControllerCubit,
        GetPostFruitsControllerState>(
      builder: (context, state) {
        if (state is GetPostFruitsControllerLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is GetPostFruitsControllerError) {
          return const Center(
            child: Text('Erro ao Buscar  dados'),
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
    );
  }
}
