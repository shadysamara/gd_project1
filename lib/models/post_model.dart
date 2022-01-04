import 'package:project1/models/user_model.dart';

class PostModel {
  UserModel postCreator;
  String imageUrl;
  String postContent;
  int nofViews;
  int nofLikes;
  int nofComments;
  PostModel({
    this.postCreator,
    this.imageUrl,
    this.postContent,
    this.nofViews,
    this.nofLikes,
    this.nofComments,
  });
}
