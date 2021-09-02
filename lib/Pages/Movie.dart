import 'package:flutter/material.dart';
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
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        _controller.play();

        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: SafeArea(
        child: Scaffold(
          body: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
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
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
