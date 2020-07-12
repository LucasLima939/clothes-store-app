import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MagazineScreen extends StatefulWidget {
  List<DocumentSnapshot> _docs;
  MagazineScreen(this._docs);
  @override
  _MagazineScreenState createState() => _MagazineScreenState(_docs);
}

class _MagazineScreenState extends State<MagazineScreen> {
  List<DocumentSnapshot> _docs;
  _MagazineScreenState(this._docs);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _docs.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Image.asset(
              _docs[index]["images"][0],
              fit: BoxFit.cover,
            ),
          );
        });
  }
}
