import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/widgets/category_card.dart';
import 'package:project_blu_k/widgets/custom_drawer.dart';

class CategoriesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firestore.instance.collection("clothes").getDocuments(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
          default:
            return ListView.builder(
              padding: EdgeInsets.all(4.0),
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return CategoryCard(snapshot.data.documents[index]);
              },
            );
        }
      },
    );
  }
}
