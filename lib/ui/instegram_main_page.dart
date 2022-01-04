import 'package:flutter/material.dart';
import 'package:project1/data/dummy_data.dart';
import 'package:project1/ui/widgets/post_widget.dart';
import 'package:project1/ui/widgets/user_widget.dart';

class InstegramUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'INSTEGRAM',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: users.map((e) {
                  return UserWidget(e);
                }).toList()),
              ),
              Column(
                children: posts.map((e) {
                  return PostWidget(e);
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
