import 'package:flutter/material.dart';
import 'package:flutter_animations/Screens/hero_animation/details_page.dart';
import 'package:flutter_animations/widgets/customAppBar.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: const CustomAppBar( title: 'Hero-animation',),

      body:  ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: ClipOval(
              child: Hero(
                tag: "avatar-$index",
                child: Image.network("https://picsum.photos/seed/$index/800"),
              ),
            ),
          ),
          title: Text("Item #$index"),
          onTap: () => _openDetail(context, index),
        );
      }),
    );
  }

  _openDetail(context, index) {
    final route = MaterialPageRoute(
      builder: (context) => DetailPage(index: index),
    );
    Navigator.push(context, route);
  }


}
