import 'package:flutter/material.dart';
import 'package:project1/news_app/data/dummy_data.dart';
import 'package:project1/news_app/models/news_model.dart';
import 'package:project1/news_app/ui/widgets/news_item_widget.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: newsList.where((element) => element.isFavourite).length,
        itemBuilder: (c, i) {
          return NewsItemWidget(
              newsList.where((element) => element.isFavourite).toList()[i],
              updateScreen);
        });
  }
}
