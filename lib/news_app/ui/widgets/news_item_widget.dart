import 'package:flutter/material.dart';
import 'package:project1/news_app/models/news_model.dart';

class NewsItemWidget extends StatefulWidget {
  Function function;
  NewsModel newsModel;
  NewsItemWidget(this.newsModel, this.function);

  @override
  State<NewsItemWidget> createState() => _NewsItemWidgetState();
}

class _NewsItemWidgetState extends State<NewsItemWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.newsModel.imageUrl),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.newsModel.title,
                    style: TextStyle(fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.newsModel.description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    widget.newsModel.isFavourite =
                        !widget.newsModel.isFavourite;
                  });
                  widget.function();
                },
                icon: Icon(
                  Icons.favorite,
                  color:
                      widget.newsModel.isFavourite ? Colors.red : Colors.grey,
                ))
          ],
        ),
      ),
    );
  }
}
