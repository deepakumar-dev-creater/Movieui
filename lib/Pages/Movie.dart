import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';

class MoviePage extends StatefulWidget {
  MoviePage({Key? key}) : super(key: key);

  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/Videos/f9.mp4')
      ..initialize().then((_) {
        _controller.play();

        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#0e2455"),
        body: _controller.value.isInitialized
            ? ListView(children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: Stack(
                          children: [
                            VideoPlayer(_controller),
                            Positioned(
                              bottom: 10,
                              right: 20,
                              child: Text(
                                "1  20m",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white30),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      "18 +",
                                      style: GoogleFonts.montserrat(
                                        color: HexColor("#6ad9f6"),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5),
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "Action",
                                    style: GoogleFonts.montserrat(
                                      color: HexColor("#6ad9f6"),
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      "3 ",
                                      style: GoogleFonts.montserrat(
                                        color: HexColor("#6ad9f6"),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_box_rounded,
                                    color: HexColor("#6ad9f6"),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.send_rounded,
                                    color: HexColor("#6ad9f6"),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "F9: The Fast Saga",
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: HexColor("#6ad9f6"),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Dom Toretto is living the quiet life off the grid with Letty and his son, but they know that danger always lurks just over the peaceful horizon. This time, that threat forces Dom to confront the sins of his past to save those he loves most. His crew soon comes together to stop a world-shattering plot by the most skilled assassin and high-performance driver they've ever encountered -- Dom's forsaken brother.",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: HexColor("#6ad9f6"),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Text("Casts",
                            style: GoogleFonts.montserrat(
                                fontSize: 20, color: HexColor("#6ad9f6"))),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://cdn.britannica.com/97/194197-050-5BD88874/Vin-Diesel-The-Fast-and-the-Furious.jpg",
                                          scale: 2),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Vin Diesel",
                                style: GoogleFonts.montserrat(
                                  color: HexColor("#6ad9f6"),
                                ),
                              )
                            ]),
                            Column(children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSZwLxd4xBwQJeHqDDT0U2Or-IXKCokgUqX1UeE27Vr9w5EUnaj",
                                          scale: 2),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "John Cena",
                                style: GoogleFonts.montserrat(
                                  color: HexColor("#6ad9f6"),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQfwd6ILN5LdHm0ZrDAn_H1D7557AzwETTqVy9HRt99urSyin66",
                                          scale: 2),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Michelle Rodriguez",
                                style: GoogleFonts.montserrat(
                                  color: HexColor("#6ad9f6"),
                                ),
                              ),
                            ]),
                            Column(children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREvvevrqg23qfcmeCGA4zJBsoRPxw81jPLghNlS1JiSu9Y1siS",
                                          scale: 2),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Tyrese Gibson",
                                style: GoogleFonts.montserrat(
                                  color: HexColor("#6ad9f6"),
                                ),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ])
            : Container(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       _controller.value.isPlaying
        //           ? _controller.pause()
        //           : _controller.play();
        //     });
        //   },
        //   child: Icon(
        //     _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        //   ),
        // ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
