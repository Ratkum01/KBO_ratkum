import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class ChewieListItem extends StatefulWidget {
  // const ChewieListItem({super.key});
  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieListItem({
    required this.videoPlayerController,
    required this.looping,
    Key? key,
  }):super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  late ChewieController _chewieController;


  @override
  void initState(){
    super.initState();
    _chewieController=ChewieController(videoPlayerController: widget.videoPlayerController,
    aspectRatio: 16 / 9,
    autoInitialize: true,
    looping: widget.looping,
    errorBuilder:  (context, errorMessage) {
      return Center(
        child: Text(
          'HAHAHAHAHAHA ERORRRRRRRRR',
          style: TextStyle(color: Colors.black),
        ),
      );
    }

    );
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(aspectRatio: 16/9,
      child: Chewie(controller: _chewieController)),
    );
  }


@override
void dispose(){
  super.dispose();
  widget.videoPlayerController.dispose();
  _chewieController.dispose();
}
}