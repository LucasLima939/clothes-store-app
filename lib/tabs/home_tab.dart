import 'package:flutter/material.dart';
import 'package:project_blu_k/layout/layout_theme.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [LayoutColor.primaryColor, LayoutColor.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          )),
        );
    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  "Lançamentos",
                ),
                centerTitle: true,
              ),
            ),
          ],
        )
      ],
    );
  }
}
