import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/product_data.dart';
import 'package:project_blu_k/screens/product_screen.dart';
import 'package:project_blu_k/utils/nav.dart';

class ProductTile extends StatelessWidget {
  final ProductData product;
  ProductTile(this.product);
  @override
  Widget build(BuildContext context) {
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
                product.images[0],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "R\$ ${product.price.toStringAsFixed(2)}",
                      style: TextStyle(
                        color: LayoutColor.primaryColor,
                        fontSize: 19.0,
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
