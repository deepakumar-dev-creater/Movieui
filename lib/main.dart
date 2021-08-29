import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

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
    BookmarkPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: HexColor("#6ad9f6"),
                              size: 25,
                            ),
                            Text(
                              "Chennai,IN",
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, color: Colors.white60),
                            ),
                          ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white60,
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              child: ListTile(
                                title: Text(
                                  'In Theaters',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20, color: Colors.white60),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 18),
                              height: 5,
                              width: 50,
                              color: HexColor("#b545bc"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: ListTile(
                          title: Text(
                            'BoxOffice',
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: Colors.white60),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: ListTile(
                          title: Text(
                            'Movies',
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: Colors.white60),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        child: ListTile(
                          title: Text(
                            'Orders',
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: Colors.white60),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 80,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: HexColor("#6ad9f6"),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 50,
                              width: 100,
                              child: ListTile(
                                title: Text(
                                  'All',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 20, color: Colors.white60),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      smallCards("Action"),
                      smallCards("Crime"),
                      smallCards("Romance"),
                      smallCards("Mystery"),
                      smallCards("Fantasy"),
                      smallCards("Comedy")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: height * 0.50,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      movieCards(height, width, "Moonlight",
                          "https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_.jpg"),
                      movieCards(height, width, "F9: The Fast Saga",
                          "https://m.media-amazon.com/images/M/MV5BMjI0NmFkYzEtNzU2YS00NTg5LWIwYmMtNmQ1MTU0OGJjOTMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg"),
                      movieCards(height, width, "Sonic the Hedgehog",
                          "https://m.media-amazon.com/images/M/MV5BMDk5Yzc4NzMtODUwOS00NTdhLTg2MjEtZTkzZjc0ZWE2MzAwXkEyXkFqcGdeQXVyMTA3MTA4Mzgw._V1_.jpg"),
                      movieCards(height, width, "Moonlight",
                          "https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_.jpg"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget movieCards(height, width, name, movielink) {
    return (Container(
        width: width * 0.60,
        height: height * 0.50,
        child: Column(
          children: [
            Container(
              width: width * 0.60,
              height: height * 0.38,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: NetworkImage(movielink), fit: BoxFit.fill),
              ),
            ),
            Container(
              width: width * 0.60,
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(name,
                  style: GoogleFonts.montserrat(
                      color: Colors.white60, fontSize: 18)),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, top: 8),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 8),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 8),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 8),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 8),
                  child: Icon(
                    Icons.star,
                    color: Colors.white12,
                  ),
                ),
              ],
            )
          ],
        )));
  }

  Widget smallCards(name) {
    return (Container(
      padding: EdgeInsets.only(left: 5),
      margin: EdgeInsets.only(left: 5, right: 5),
      height: 50,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white12, borderRadius: BorderRadius.circular(20)),
            height: 50,
            width: 120,
            child: ListTile(
              title: Text(
                name,
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.montserrat(fontSize: 17, color: Colors.white60),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
