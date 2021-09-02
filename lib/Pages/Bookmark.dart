import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class BookmarkPage extends StatefulWidget {
  BookmarkPage({Key? key}) : super(key: key);

  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0e2455"),
      appBar: AppBar(
        backgroundColor: HexColor("#0e2455"),
        centerTitle: true,
        title: Text(
          "Bookmark",
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 125,
              padding: EdgeInsets.all(5),
              child: Card(
                color: HexColor("#6ad9f6"),
                clipBehavior: Clip.antiAlias,
                child: Row(
                  children: [
                    // "https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_.jpg",
                    Container(
                      padding: EdgeInsets.all(2),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://m.media-amazon.com/images/M/MV5BNzQxNTIyODAxMV5BMl5BanBnXkFtZTgwNzQyMDA3OTE@._V1_.jpg",
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              Center(child: new CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              new Icon(Icons.error),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Moonlight",
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Text(
                              "2016 111 min",
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.bookmark, color: (Colors.amber)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 125,
              padding: EdgeInsets.all(5),
              child: Card(
                color: HexColor("#6ad9f6"),
                clipBehavior: Clip.antiAlias,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      child: AspectRatio(
                        aspectRatio: 2 / 2,
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://m.media-amazon.com/images/M/MV5BMjI0NmFkYzEtNzU2YS00NTg5LWIwYmMtNmQ1MTU0OGJjOTMxXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg",
                          fit: BoxFit.fill,
                          placeholder: (context, url) =>
                              Center(child: new CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              new Icon(Icons.error),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "F9",
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Text(
                              "2021 143 min",
                              style: GoogleFonts.montserrat(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Icon(Icons.bookmark, color: (Colors.amber)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
