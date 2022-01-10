import 'package:flutter/material.dart';
import 'package:project1/news_app/data/dummy_data.dart';
import 'package:project1/news_app/ui/widgets/news_item_widget.dart';

class AllNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (c, i) {
          return NewsItemWidget(newsList[i], () {});
        });
  }
}
