import 'package:day1/screens/video_screen/channel.dart';
import 'package:day1/screens/video_screen/like_dislike.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  final String videoUrl;
  final String title;
  final String subtitle;
  final String channel;
  const VideoScreen({
    super.key,
    required this.videoUrl,
    required this.title,
    required this.subtitle,
    required this.channel,
  });

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.videoUrl) ?? '1',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.blueAccent,
              controlsTimeOut: const Duration(seconds: 3),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    widget.subtitle,
                    style: const TextStyle(fontSize: 13),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          ChannelName(
            channel: widget.channel,
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          const LikeDislike(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
