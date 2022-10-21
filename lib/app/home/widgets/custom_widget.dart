import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_network/image_network.dart';

import '../../controller/cubit/imports.dart';

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
          child: Card(
          
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ImageNetwork(
                      image: product.imageLink!,
                      height: MediaQuery.of(context).size.height/9.4,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.name!,
                    maxLines: 2,
                    style: const TextStyle(
                        fontFamily: 'avenir', fontWeight: FontWeight.w800),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  if (product.rating != null)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding:
                          const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            product.rating.toString(),
                            style: const TextStyle(color: Colors.white),
                          ),
                          const Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 8),
                  Text('\$${product.price}',
                      style: const TextStyle(fontSize: 32, fontFamily: 'avenir')),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }
}
