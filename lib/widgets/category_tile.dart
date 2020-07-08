import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/screens/category_screen.dart';
import 'package:project_blu_k/utils/nav.dart';

class CategoryTile extends StatelessWidget {
  final DocumentSnapshot snapshot;
  CategoryTile(this.snapshot);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(snapshot.data["icon"]),
      title: Text(snapshot.data["title"]),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        push(context, CategoryScreen(snapshot));
      },
    );
  }
}
