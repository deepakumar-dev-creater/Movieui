import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movieui/Pages/FinalPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
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
    );
  }

  Widget movieCards(height, width, name, movielink) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FinalPage(movielink),
          ),
        );
      },
      child: (Container(
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
          ))),
    );
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
