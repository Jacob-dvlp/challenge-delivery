import '../imports.dart';
import 'produts.dart';

class CustomWidget extends StatelessWidget {
  final List<ResponseApi> responseApi;

  const CustomWidget({Key? key, required this.responseApi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
      itemCount: responseApi.length,
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 2,
        pattern: [
          const QuiltedGridTile(1, 1),
          const QuiltedGridTile(2, 1),
          const QuiltedGridTile(1, 1),
          const QuiltedGridTile(1, 2),
        ],
        repeatPattern: QuiltedGridRepeatPattern.inverted,
      ),
      itemBuilder: (BuildContext context, int index) {
        final ResponseApi product = responseApi[index];
        return Padding(
            padding: const EdgeInsets.all(7.0),
            child: Produts(product: product));
      },
    ));
  }
}
