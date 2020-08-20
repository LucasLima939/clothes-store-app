import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/counter_icon.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/products/product.dart';

class ProductScreen extends StatefulWidget {
  final ProductData product;
  ProductScreen(this.product);
  @override
  _ProductScreenState createState() => _ProductScreenState(product);
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductData product;
  String size;
  _ProductScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final _prod = product.items[0];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LayoutColor.primaryColor,
        title: Text(_prod.name),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 0.9,
            child: Carousel(
              images: _prod.images
                  .map((images) => NetworkImage(images.imageUrl))
                  .toList(),
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.transparent,
              dotColor: LayoutColor.primaryColor,
              autoplay: false,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  product.productName,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: LayoutColor.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "SKU: ${product.productReference}",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Tamanho",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 34.0,
                  child: GridView(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 0.5,
                    ),
                    children: _prod.tamanho
                        .map((s) => GestureDetector(
                              onTap: () => setState(() {
                                size = s;
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  border: Border.all(
                                    color: s == size
                                        ? LayoutColor.primaryColor[500]
                                        : Colors.grey[500],
                                    width: 3.0,
                                  ),
                                ),
                                width: 50.0,
                                alignment: Alignment.center,
                                child: Text(s),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    'R\$ ${_prod.sellers[0].commertialOffer.price.toStringAsFixed(2).replaceAll('.', ',')}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Quantidade em Estoque: ${_prod.sellers[0].commertialOffer.availableQuantity}',
                    style: TextStyle(color: Colors.green),
                  )
                ]),
                SizedBox(
                  height: 5,
                ),
                Row(children: [
                  SafeArea(
                    child: CounterIcon(),
                  ),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
