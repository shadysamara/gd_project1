import 'package:flutter/material.dart';
import 'package:project1/facebook/ui/facebook_main_page.dart';
import 'package:project1/models/user_model.dart';
import 'package:project1/ui/instegram_main_page.dart';

void main() {
  runApp(MaterialApp(
    home: FacebookMainPage(),
  ));
}

enum UserType { Mershant, User }

class FirstScreen extends StatelessWidget {
  FirstScreen() {
    print('hello');
  }
  List<String> images = [
    'https://images.unsplash.com/photo-1593642531955-b62e17bdaa9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80',
    'https://images.unsplash.com/photo-1641208144232-b0775d26987b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1641247456466-95e68ac46d3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80',
    'https://images.unsplash.com/photo-1641241714723-4c450e937044?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1594&q=80'
  ];
  // 1- positional parameters
  // 2- optional parameters
  // 2.1- optional positional parameters
  // 2.2- optional named parameters
  int sum(int x, [int y]) {
    return x + y;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First App2'),
        ),
        body: SingleChildScrollView(
          child: Column(
              children: images.map((e) {
            return Container(
                margin: EdgeInsets.only(top: 10), child: Image.network(e));
          }).toList()),
        ));
  }
}
