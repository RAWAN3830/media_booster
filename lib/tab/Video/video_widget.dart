import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video_widget extends StatefulWidget {
  final String? title;
  final String? video;
  final String? poster;
  const Video_widget({
    super.key,
    required this.title,
    required this.video,
    required this.poster
  });

  @override
  State<Video_widget> createState() => _Video_widgetState();
}

class _Video_widgetState extends State<Video_widget> {
  VideoPlayerController? playerController;
  ChewieController? chewieController;

  @override
  void initState() {
    // TODO: implement initState
     playerController = VideoPlayerController.asset(widget.video!);
    playerController!.initialize();
    chewieController = ChewieController(
        videoPlayerController: playerController!,
        autoPlay: true,
        allowPlaybackSpeedChanging: true,
        looping: false,
        fullScreenByDefault: true,
        allowFullScreen: true);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    chewieController!.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:  IconButton(icon:Icon(CupertinoIcons.back,color: Colors.white,size: 20),
    onPressed: (){
    Navigator.of(context).pop();}),
        backgroundColor: Colors.black,
        title: Text(
          "Video Player",style: TextStyle(color: Colors.white),
        ),
      ),
body: Center(
  child: Column(
    children: [
      Container(
        height: 700,
          //height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white,width: 1,style: BorderStyle.solid,)

          ),
          child:  Chewie( controller: chewieController!,),
      ),
    ],
  ),
),
    );
  }
}