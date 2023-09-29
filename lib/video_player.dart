import 'package:flutter/material.dart';
import 'package:youtube/youtubeplayer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer(this.url, this.title, {super.key});
  final String url;
  final String title;
  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;
  String ? videoId;
  @override
  void initState() {
    super.initState();
    videoId = YoutubePlayer.convertUrlToId(widget.url);
    _controller = YoutubePlayerController(initialVideoId: videoId!);
  }

  @override
  Widget build(context) {
    print(widget.url);
    print(videoId);
    return SafeArea(
      child: SizedBox(
        height: 300,
        width: 700,
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  YouTubeVideoPlayer(widget.url)));
          },
          child: Image.network('https://img.youtube.com/vi/$videoId/0.jpg'),
        ),
      ),
    );
  }
}
