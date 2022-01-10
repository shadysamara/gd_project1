import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookMainPage extends StatelessWidget {
  Widget omarWidget({String imageUrl, String userName}) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          height: 160,
          width: 110,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 160,
          width: 110,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                userName,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera,
              color: Colors.blue,
            )),
        title: Container(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 5),
                fillColor: Colors.grey[300],
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 10, color: Colors.red),
                    borderRadius: BorderRadius.circular(40))),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print('you have just press on chat');
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Image.asset(
                'assets/icons/messenger.png',
                height: 30,
                width: 30,
              ),
            ),
          )
        ],
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    'Stories',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              // Spacer(),
              Text(
                'see Archive ',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              omarWidget(
                  userName: 'Omar Ahmed',
                  imageUrl:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
              omarWidget(
                  userName: 'hassn Ali',
                  imageUrl:
                      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
              omarWidget(
                  userName: 'Islam hani',
                  imageUrl:
                      'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
              omarWidget(
                  userName: 'Farah asad',
                  imageUrl:
                      'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
              omarWidget(
                  userName: 'User Name',
                  imageUrl:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
              omarWidget(
                  userName: 'Omar Ahmed',
                  imageUrl:
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'),
            ],
          ),
        )
      ]),
    );
  }
}

class StatefulTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OmarState();
  }
}

class OmarState extends State<StatefulWidget> {
  String text = 'omar';
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // ternary expression
            text = text == 'omar' ? 'hassan' : 'omar';

            setState(() {});
          },
          child: Icon(Icons.edit),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Light Mode',
                    style: TextStyle(
                        color: !isDarkMode ? Colors.black : Colors.white),
                  ),
                  Spacer(),
                  Switch(
                      value: isDarkMode,
                      onChanged: (value) {
                        isDarkMode = value;
                        setState(() {});
                      })
                ],
              )
            ],
          ),
        ));
  }
}

class BottomTest extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomTestState();
  }
}

class BottomTestState extends State<BottomTest> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(activeIndex == 0 ? 'Home Page' : 'Favourite page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          this.activeIndex = value;
          setState(() {});
        },
        currentIndex: activeIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Page'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite Page'),
        ],
      ),
    );
  }
}
class FavouritePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Center(child: Text('Favourite'),);
  }
}

