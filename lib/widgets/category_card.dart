import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';
import 'package:project_blu_k/screens/category_screen.dart';
import 'package:project_blu_k/utils/nav.dart';

class CategoryCard extends StatelessWidget {
  final DocumentSnapshot snapshot;
  CategoryCard(this.snapshot);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        push(context, CategoryScreen(snapshot));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              color: LayoutColor.primaryColor,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 500,
                    height: 500,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          snapshot.data["icon"],
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          snapshot.data["title"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: LayoutColor.primaryColor,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 80,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /*Image.network(
              snapshot.data["icon"],
              fit: BoxFit.cover,
            ),*/
          ],
        ),
      ),
    );
  }
}
