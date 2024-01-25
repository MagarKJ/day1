import 'package:day1/screens/video_screen/video_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Video {
  final String title;
  final String thumbnail;
  final String videoUrl;
  final String subtitle;
  final String channel;

  Video(
      {required this.title,
      required this.thumbnail,
      required this.videoUrl,
      required this.subtitle,
      required this.channel});
}

class MyBody extends StatelessWidget {
  final List<Video> videoData = [
    Video(
        title: 'Jyotsna-Swoopna Suman(Official M/V)',
        thumbnail: 'Assets/Photos/jyotsna.jpg',
        videoUrl: 'https://youtu.be/rYHwA99Kt1k?si=HmavHfZrBbN5xr0B',
        subtitle: '326k views • 2 day ago',
        channel: 'Swoopna Suman'),
    Video(
        title: 'Olivia Rodrigo - deja vu (Official Video)',
        thumbnail: 'Assets/Photos/olivia_rodrigo.jpg',
        videoUrl: 'https://youtu.be/cii6ruuycQA?si=Sas_8UcGv5NNzFSg',
        subtitle: '390M views • 2 years ago',
        channel: 'Olivia Rodrigo'),
    Video(
        title: 'Taylor Swift - You Belong With Me',
        thumbnail: 'Assets/Photos/taylor_swift.jpg',
        videoUrl: 'https://youtu.be/VuNIsY6JdUw?si=jjSUt-rQowkLkcEG',
        subtitle: '3.5B views • 14 years ago',
        channel: 'Taylor Swift'),
    Video(
        title:
            'Marvels Captain America: The Winter Soldier - Trailer 2 (OFFICIAL)',
        thumbnail: 'Assets/Photos/captain_america.jpg',
        videoUrl: 'https://youtu.be/7SlILk2WMTI?si=xd9St4adyL6ielSh',
        subtitle: '3.9M views • 2 years ago',
        channel: 'Olivia Rodrigo'),
    Video(
        title: 'The Weeknd - Reminder (Official Video)',
        thumbnail: 'Assets/Photos/reminder.jpg',
        videoUrl: 'https://youtu.be/JZjAg6fK-BQ?si=vwKGMM7DJ2vkvSAm',
        subtitle: '485M views • 6 years ago',
        channel: 'The Weekend'),
    Video(
        title: 'Sajjan Raj Vaidya - Ek Sarvanaam [Official Release]',
        thumbnail: 'Assets/Photos/ek_sarvanam.jpg',
        videoUrl: 'https://youtu.be/Gw9xLoX3g40?si=rwwBjg0XcW_e5Ir2',
        subtitle: '8.3M views • 1 years ago',
        channel: 'Sajjan Raj Vaidya'),
  ];
  MyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: videoData.length,
        itemBuilder: (context, index) {
          return VideoItem(
            video: videoData[index],
          );
        },
      ),
    );
  }
}

class VideoItem extends StatelessWidget {
  final Video video;

  const VideoItem({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(
              () => VideoScreen(
                videoUrl: video.videoUrl,
                title: video.title,
                subtitle: video.subtitle,
                channel: video.channel,
              ),
            );
          },
          child: SizedBox(
            height: Get.height * 0.3,
            width: Get.width * 0.95,
            child: Image.asset(
              video.thumbnail,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 75,
          width: double.maxFinite,
          child: ListTile(
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('Assets/Photos/thor.jpg'),
                    radius: 20,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video.title,
                        style: const TextStyle(fontSize: 14),
                        maxLines: 2,
                      ),
                      Text(
                        '${video.channel} • ${video.subtitle}',
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
