import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project1/models/post_model.dart';

class PostWidget extends StatelessWidget {
  PostModel postModel;
  PostWidget(this.postModel);
  likeFunction() {
    log('you have just pressed on like button');
  }

  commentFunction() {
    log('you have just pressed on comment button');
  }

  shareFunction() {
    log('you have just pressed on share button');
  }

  saveFunction() {
    log('you have just pressed on save button');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(postModel.postCreator.imageUrl),
              ),
              SizedBox(
                width: 10,
              ),
              Text(postModel.postCreator.name)
            ],
          ),
          Container(
            color: Colors.red,
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10),
            child: Image.network(
              postModel.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    likeFunction();
                  },
                  icon: Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {
                    commentFunction();
                  },
                  icon: Icon(Icons.chat)),
              IconButton(
                  onPressed: () {
                    shareFunction();
                  },
                  icon: Icon(Icons.share)),
              Spacer(),
              IconButton(
                  onPressed: () {
                    saveFunction();
                  },
                  icon: Icon(Icons.bookmark_outline))
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '${postModel.nofViews} views, Liked by mohammed and ${postModel.nofLikes} others',
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
