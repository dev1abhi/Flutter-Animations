import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Item #$index"),
              background: Hero(
                tag: "avatar-$index",
                child: Image.network(
                  "https://picsum.photos/seed/$index/800",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}