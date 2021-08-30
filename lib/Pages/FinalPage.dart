import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movieui/api/apical.dart';
import 'package:movieui/models/Moviemodel.dart';
import 'package:shadow/shadow.dart';

class FinalPage extends StatefulWidget {
  final String movielink;
  final String id;
  FinalPage(
    this.movielink, {
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  late Future<MovieModel> _movieModel;
  @override
  void initState() {
    _movieModel = GetName(widget.id).getsingleMovie(widget.id);
    super.initState();
    print(widget.id);
  }

  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: (HexColor("#0e2455")),
          body: FutureBuilder<MovieModel>(
            future: _movieModel,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return NestedScrollView(
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      SliverAppBar(
                        primary: true,
                        expandedHeight: height * 0.35,
                        floating: true,
                        pinned: false,
                        snap: true,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Image.network(
                            snapshot.data!.poster,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ];
                  },
                  body: Container(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          snapshot.data!.title,
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white60,
                                              fontSize: 25),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              snapshot.data!.year,
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white60,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              "-" + snapshot.data!.genre,
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white60,
                                                  fontSize: 12),
                                            ),
                                            Text(
                                              " " + snapshot.data!.runtime,
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white60,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.bookmark),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 0, top: 8),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 8),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 8),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 8),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 8),
                                        child: Icon(
                                          Icons.star,
                                          color: Colors.white12,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8, left: 5),
                                        child: Text(
                                          " " +
                                              snapshot.data!.imdbRating +
                                              " /10",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white60,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // width: double.infinity,
                                  child: Text(
                                    "Storyline",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white60, fontSize: 20),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // width: double.infinity,
                                  child: Text(
                                    snapshot.data!.plot,
                                    style: GoogleFonts.montserrat(
                                      height: 1.5,
                                      color: Colors.white60,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print('Hi there');
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.purple,
                                            HexColor('#0e2455')
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Container(
                                        width: double.infinity,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'BUY TICKETS',
                                          style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                );
              }
            },
          )),
    );
  }
}
