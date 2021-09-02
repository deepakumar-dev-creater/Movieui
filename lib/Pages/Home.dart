import 'package:cached_network_image/cached_network_image.dart';
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
                    movieCards('tt4975722', height, width, "Moonlight",
                        "https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_.jpg"),
                    movieCards('tt5433138', height, width, "F9: The Fast Saga",
                        "https://m.media-amazon.com/images/M/MV5BMjI0NmFkYzEtNzU2YS00NTg5LWIwYmMtNmQ1MTU0OGJjOTMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg"),
                    movieCards("tt3794354", height, width, "Sonic the Hedgehog",
                        "https://m.media-amazon.com/images/M/MV5BMDk5Yzc4NzMtODUwOS00NTdhLTg2MjEtZTkzZjc0ZWE2MzAwXkEyXkFqcGdeQXVyMTA3MTA4Mzgw._V1_.jpg"),
                    movieCards('tt1375666', height, width, "Inception",
                        "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_FMjpg_UX1000_.jpg"),
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
                    movieCards('tt4975722', height, width, "Tenet",
                        "https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg"),
                    movieCards('tt7146812', height, width, "Onward",
                        "https://m.media-amazon.com/images/M/MV5BNzE5MDhjNmQtZDIzNi00ZWYwLTgzZTEtMjFjOTFmY2E2NWI2XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg"),
                    movieCards("tt0816692", height, width, "Interstellar",
                        "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg"),
                    movieCards('tt7286456', height, width, "Joker",
                        "https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget movieCards(id, height, width, name, movielink) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FinalPage(
              movielink,
              id: id,
            ),
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
                child: CachedNetworkImage(
                  imageUrl: movielink,
                  placeholder: (context, url) =>
                      Center(child: new CircularProgressIndicator()),
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
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
