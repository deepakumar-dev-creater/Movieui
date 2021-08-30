import 'package:flutter/material.dart';

class FinalPage extends StatefulWidget {
  final String movielink;
  FinalPage(
    this.movielink, {
    Key? key,
  }) : super(key: key);

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: height * 0.40,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                widget.movielink,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
      body: Container(
        child: Text("Sample Text"),
      ),
    ));
  }
}
