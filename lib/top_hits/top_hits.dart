import 'package:flutter/material.dart';
import 'package:sptify/main.dart';
import 'package:sptify/new_display_screen.dart';
import 'package:sptify/top_hits/widgets/sliver_app_bar_widget.dart';

import '../colors.dart';

import '../modelclass.dart';

class TopHits extends StatefulWidget {
  const TopHits({super.key});

  @override
  State<TopHits> createState() => _TopHitsState();
}

class _TopHitsState extends State<TopHits> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(),
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          color: ColorConstants.primaryColor,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Icon(Icons.play_arrow, size: 35,),
                    ),
                    const Text('Featured', style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal
                    )),
                    ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: 5,
                          thickness: 0.5,
                          color: Colors.grey,
                        );
                      },
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: audiolist.length,
                      itemBuilder: (BuildContext context, int index) {
                        // final item = topHit[index];

                        return Card(
                          color: Colors.black,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Display_song3(
                                audioValue: index,
                                  ))
                              ));

                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      //child: Image.asset(item['image']),
                                      child: Image.asset(audiolist[index].image!),
                                    ),
                                  ),
                                  const SizedBox(width: 12,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Text(item['title'].toString().toUpperCase(), style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),
                                        Text(audiolist[index].title!.toUpperCase(), style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),

                                        const SizedBox(height: 8),
                                        Text(audiolist[index].description!, style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState((value) {
                                        favorite = value;
                                      } as VoidCallback);
                                    },
                                    icon: Icon(Icons.favorite,color: (favorite == true)? Colors.green:Colors.white,),),
                                   SizedBox(width: 12),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.more_vert, color: Colors.white,)),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class Display_song3 extends StatefulWidget {
  final audioValue;
  const Display_song3({
    super.key,
    required this.audioValue});

  @override
  State<Display_song3> createState() => _Display_song3State();
}

class _Display_song3State extends State<Display_song3> {
  @override
  Widget build(BuildContext context) {
    return new_Display_song2(
      currindex: widget.audioValue,

    );
  }
}
