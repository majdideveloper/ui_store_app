import 'package:flutter/material.dart';

import 'package:ui_store_app/models/product_model.dart';
import 'package:ui_store_app/screens/detail/detail_screen.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double itemHeight =
        (MediaQuery.of(context).size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = MediaQuery.of(context).size.width / 2;
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: (itemWidth / itemHeight),
        ),
        itemCount: ProductModel.products.length,
        itemBuilder: (context, index) {
          return _bulidProduct(index,context);
        });
  }

  Widget _bulidProduct(index,context) => InkWell(
    onTap: (){
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailScreen(product:ProductModel.products[index] )),
  );
    },
    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ProductModel.products[index].imageUrl),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Text(ProductModel.products[index].name),
            Text(ProductModel.products[index].price.toString()),
          ],
        ),
  );
}
