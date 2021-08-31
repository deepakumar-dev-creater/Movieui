import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0e2455"),
      appBar: AppBar(
        backgroundColor: HexColor("#0e2455"),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
              child: Container(
            decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide.none)),
            width: double.infinity,
            height: 350.0,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://lh3.googleusercontent.com/ogw/ADea4I5ExgqIzqIvJ8qA40RyYhp-gYL1BBysLqGMCP8kaw=s83-c-mo",
                    ),
                    radius: 50.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Deepak Kumar",
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 22.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Posts",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "1200",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.pinkAccent,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Followers",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "21.2K",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.pinkAccent,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "1200",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.pinkAccent,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  // Text(
                  //   'My name is Natasha and I am  a freelance mobile app developper.\n'
                  //   'Having Experiece in Flutter and Android',
                  //   style: TextStyle(
                  //     fontSize: 22.0,
                  //     fontStyle: FontStyle.italic,
                  //     fontWeight: FontWeight.w300,
                  //     color: Colors.black,
                  //     letterSpacing: 2.0,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          // Container(
          //   width: 300.00,
          //   child: RaisedButton(
          //       onPressed: () {},
          //       shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(80.0)),
          //       elevation: 0.0,
          //       padding: EdgeInsets.all(0.0),
          //       child: Ink(
          //         decoration: BoxDecoration(
          //           gradient: LinearGradient(
          //               begin: Alignment.centerRight,
          //               end: Alignment.centerLeft,
          //               colors: [Colors.pink, Colors.pinkAccent]),
          //           borderRadius: BorderRadius.circular(30.0),
          //         ),
          //         child: Container(
          //           constraints:
          //               BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
          //           alignment: Alignment.center,
          //           child: Text(
          //             "Contact me",
          //             style: TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 26.0,
          //                 fontWeight: FontWeight.w300),
          //           ),
          //         ),
          //       )),
          // ),
        ],
      ),
    );
    // backgroundColor: HexColor("#0e2455"),
    // appBar: AppBar(
    //   backgroundColor: HexColor("#0e2455"),
    //   title: Text("Profile"),
    //   centerTitle: true,
    // ),
    // body: Container(
    //   child: Center(
    //     child: Text("Profile"),
    //   ),
    // ),
  }
}
