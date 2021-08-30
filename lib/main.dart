import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Pages/Bookmark.dart';
import 'Pages/Feed.dart';
import 'Pages/Home.dart';
import 'Pages/Profile.dart';

void main() {
  runApp(MyApp());
}

// TODO:Sceconday
//Color:b545bc
// 6ad9f6
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final List<Widget> _pageOptions = [
    HomePage(),
    FeedPage(),
    Center(
      child: Text("center"),
    ),
    BookmarkPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: (HexColor("#0e2455")),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 2,
          backgroundColor: Colors.transparent,
          fixedColor: Colors.amberAccent,
          selectedIconTheme: IconThemeData(color: HexColor('#b545bc')),
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              print(index);
              print('$selectedIndex value');
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectedIndex == 0 || selectedIndex == 2
                    ? (HexColor("#6ad9f6"))
                    : (Colors.white24),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.compass_fill,
                color: selectedIndex == 1
                    ? (HexColor("#6ad9f6"))
                    : (Colors.white24),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                child: selectedIndex == 2
                    ? Stack(
                        children: [
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                          Icon(
                            Icons.play_circle_fill_rounded,
                            size: width * 0.15,
                          ),
                        ],
                      )
                    : (Icon(
                        Icons.play_circle_fill_rounded,
                        size: width * 0.15,
                      )),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: selectedIndex == 3
                    ? (HexColor("#6ad9f6"))
                    : (Colors.white24),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.supervised_user_circle_outlined,
                color: selectedIndex == 4
                    ? (HexColor("#6ad9f6"))
                    : (Colors.white24),
              ),
              label: '',
            ),
          ],
        ),
        body: _pageOptions[selectedIndex]);
  }
}
