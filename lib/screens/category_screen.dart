import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/products/product.dart';
import 'package:project_blu_k/service/vtex_api_comunicator_blu_k_service.dart';
import 'package:project_blu_k/widgets/product_tile.dart';

class CategoryScreen extends StatefulWidget {
  final DocumentSnapshot snapshot;
  CategoryScreen(this.snapshot);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  
    VtexApiComunicatorBluKService service = VtexApiComunicatorBluKService();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: LayoutColor.primaryColor,
          title: Text(widget.snapshot.data["title"]),
          centerTitle: true,
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.grid_on),
            ),
            Tab(
              icon: Icon(Icons.view_carousel),
            ),
          ]),
        ),
        body: FutureBuilder<List<ProductData>>(
          future: service.getProducts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  GridView.builder(
                    padding: EdgeInsets.all(4.0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, index) {
                      return ProductTile(
                            snapshot.data[index],
                      );
                    },
                  ),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {},
                          child: Image.network(
                            snapshot.data[index].items[0].images[0].imageUrl,
                            fit: BoxFit.fill,
                          ),
                        );
                      }),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
