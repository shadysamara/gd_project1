import 'package:flutter/material.dart';
import 'package:project1/models/user_model.dart';

class UserWidget extends StatelessWidget {
  UserModel userModel;
  UserWidget(this.userModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(userModel.imageUrl),
          ),
          Text(
            userModel.name,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
