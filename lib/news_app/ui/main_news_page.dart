import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project1/news_app/data/dummy_data.dart';
import 'package:project1/news_app/ui/screens/all_news_screen.dart';
import 'package:project1/news_app/ui/screens/favourite_news_screen.dart';
import 'package:project1/news_app/ui/widgets/news_item_widget.dart';

class MainNewsPage extends StatefulWidget {
  @override
  State<MainNewsPage> createState() => _MainNewsPageState();
}

class _MainNewsPageState extends State<MainNewsPage> {
  int bnbIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('News App'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bnbIndex,
        onTap: (index) {
          setState(() {
            this.bnbIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: 'All News', icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              label: 'Favourite News', icon: Icon(Icons.favorite)),
        ],
      ),
      body:
          Container(child: bnbIndex == 0 ? AllNewsScreen() : FavouriteScreen()),
    );
  }
}
