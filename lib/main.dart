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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
          fixedColor: HexColor('#0e2455'),
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
                    : (Colors.black),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass_fill),
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
              icon: Icon(Icons.bookmark),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_outlined),
              label: '',
            ),
          ],
        ),
        body: _pageOptions[selectedIndex]);
  }
}
