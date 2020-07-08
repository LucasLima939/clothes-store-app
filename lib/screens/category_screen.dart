import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/models/product_data.dart';
import 'package:project_blu_k/screens/maganize_screen.dart';
import 'package:project_blu_k/screens/magazine_screen.dart';
import 'package:project_blu_k/widgets/product_tile.dart';

class CategoryScreen extends StatelessWidget {
  final DocumentSnapshot snapshot;
  CategoryScreen(this.snapshot);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: LayoutColor.primaryColor,
          title: Text(snapshot.data["title"]),
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
        body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance
              .collection("clothes")
              .document(snapshot.documentID)
              .collection("items")
              .getDocuments(),
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
                      crossAxisCount: 2,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: (context, index) {
                      return ProductTile(
                        ProductData.fromDocument(
                            snapshot.data.documents[index]),
                      );
                    },
                  ),
                  MagazineScreen(),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
