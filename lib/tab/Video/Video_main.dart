import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sptify/top_hits/top_hits.dart';
import 'package:sptify/tab/Video/videomodel.dart';
import 'package:video_player/video_player.dart';

import 'video_widget.dart';
import '../tap.dart';

class Video_screen extends StatefulWidget {
  const Video_screen({
    super.key,
  });

  @override
  State<Video_screen> createState() => _Video_screenState();
}

class _Video_screenState extends State<Video_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(icon:Icon(CupertinoIcons.back,color: Colors.white,size: 20),
            onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Tabs(),));
        }),
          backgroundColor: Colors.black,
          title: Text(
            'Video Screen',
            style: TextStyle(fontSize: 24, color: Colors.white),
          )),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 1,
          ),
          itemCount: Videomodel.length,
          itemBuilder: (context, int index) {
            return Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Video_widget(
                          title: Videomodel[index].title,
                          video: Videomodel[index].video,
                          poster: Videomodel[index].poster,
                        ),
                      ));
                    },
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Container(
                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(Videomodel[index].poster!),
                                      fit: BoxFit.cover,
                                      opacity: .6),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Center(
                                      child: Text(Videomodel[index].title!,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold))),
                                ],
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
