import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: (HexColor("#0e2455")),
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home),
                Icon(Icons.home),
                Icon(Icons.home),
                Icon(Icons.home),
              ],
            ),
            bottom: 10,
          ),
          ListView(
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
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
