import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/counter_icon.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/product_data.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LayoutColor.primaryColor,
        title: Text(product.title),
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
              images: product.images.map((url) => NetworkImage(url)).toList(),
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
                  product.title,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: LayoutColor.primaryColor,
                  ),
                  textAlign: TextAlign.center,
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
                    children: product.sizes
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
                Text(
                  'R\$ ${product.price}',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
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
