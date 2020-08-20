import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/products/product.dart';
import 'package:project_blu_k/screens/product_screen.dart';
import 'package:project_blu_k/utils/nav.dart';

class ProductTile extends StatelessWidget {
  final ProductData product;
  ProductTile(this.product);
  @override
  Widget build(BuildContext context) {
    final _prod = product.items[0];
    return InkWell(
      onTap: () {
        push(context, ProductScreen(product));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.85,
              child: Image.network(
                _prod.images[0].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      product.productName,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 8),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "R\$ ${_prod.sellers[0].commertialOffer.price.toStringAsFixed(2)}",
                      style: TextStyle(
                        color: LayoutColor.primaryColor,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
