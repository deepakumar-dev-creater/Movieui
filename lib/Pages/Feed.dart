import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movieui/api/apical.dart';
import 'package:movieui/models/NewsModel.dart';
import 'package:intl/intl.dart';

class FeedPage extends StatefulWidget {
  FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  late Future<NewsModel> _newsmodel;
  @override
  void initState() {
    // TODO: implement initState
    _newsmodel = GetName('').getNews();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: HexColor('#0e2455'),
        title: Text(
          "News Feed",
          style: GoogleFonts.montserrat(),
        ),
      ),
      backgroundColor: HexColor("#0e2455"),
      body: Container(
        child: FutureBuilder<NewsModel>(
            future: _newsmodel,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(child: CircularProgressIndicator());
              } else {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.articles.length,
                    itemBuilder: (context, index) {
                      var article = snapshot.data!.articles[index];
                      var formattedTime = DateFormat('dd MMM - HH:mm')
                          .format(article.publishedAt);
                      return Container(
                        decoration: BoxDecoration(
                          color: HexColor("#6ad9f6"),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        height: 100,
                        margin: const EdgeInsets.all(8),
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: <Widget>[
                            Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.network(
                                  article.urlToImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    formattedTime,
                                    style: GoogleFonts.montserrat(),
                                  ),
                                  Text(
                                    article.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    article.description,
                                    maxLines: 2,
                                    style: GoogleFonts.montserrat(),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              }
            }),
      ),
    );
  }
}
