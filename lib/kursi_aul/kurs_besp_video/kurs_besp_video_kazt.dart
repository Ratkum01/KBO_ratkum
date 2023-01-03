import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:school_aul/kursi_aul/chewie_list_item.dart';
import 'package:video_player/video_player.dart';

class Kurs_besp_vedeo_kaz extends StatelessWidget {
  const Kurs_besp_vedeo_kaz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Қазақ тілі Курсы'),
        backgroundColor: Color.fromARGB(248, 120, 66, 154),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1 сабақ',
                  style: TextStyle(
                      color: Color.fromARGB(248, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Зат есім дегеніміз не ?',
                  style: TextStyle(
                      color: Color.fromARGB(248, 120, 66, 154),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                    'assets/videos/kaztili7sin15.mp4'),
                looping: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '2 сабақ',
                  style: TextStyle(
                      color: Color.fromARGB(248, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Есімдік дегеніміз не ?',
                  style: TextStyle(
                      color: Color.fromARGB(248, 120, 66, 154),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                    'assets/videos/kaztili7sin16.mp4'),
                looping: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '3 сабақ',
                  style: TextStyle(
                      color: Color.fromARGB(248, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Сын есім дегеніміз не ?',
                  style: TextStyle(
                      color: Color.fromARGB(248, 120, 66, 154),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            ChewieListItem(
                videoPlayerController: VideoPlayerController.asset(
                    'assets/videos/kaztili7sin17.mp4'),
                looping: true)
          ],
        ),
      ),
    );
  }
}
