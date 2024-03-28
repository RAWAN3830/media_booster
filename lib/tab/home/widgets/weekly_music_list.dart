import 'package:flutter/material.dart';

import '../../../colors.dart';
import '../../../modelclass.dart';


class WeeklyMusicList extends StatelessWidget {
  const WeeklyMusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: slider.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            final slid = slider[index];
            return Column(
              children: [
                Container(
                  height: 125,
                  width: 240,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                      image:  DecorationImage(
                        image: AssetImage(slid['image']),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                const SizedBox(height: 8,),
                Text(slid['title'], style: TextStyle(
                  color: ColorConstants.starterWhite,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ))
              ],
            );
          }),
    );
  }
}



// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import '../../../modelclass.dart';
//
//
// class WeeklyMusicList extends StatelessWidget {
//   const WeeklyMusicList({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     int initPage = 0;
//     return SizedBox(
//       height: 160,
//       child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: slider.length,
//           physics: const BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, int index) {
//             final slid = slider[index];
//             return Column(
//               children: [
//                 (
//                     items: List.generate(slid.length,
//                             (index){return InkWell(
//                               onTap: (){
//
//                               },
//                             );}),
//                     options: CarouselOptions(
//                       initialPage: initPage,
//                       height: 125,
//                       onPageChanged: (index, reason){
//                         setState(){
//                           initPage = index;
//                         };
//
//                       })),
//                 Container()
//                 // Container(
//                 //   height: 125,
//                 //   width: 240,
//                 //   margin: const EdgeInsets.symmetric(horizontal: 8),
//                 //   decoration: BoxDecoration(
//                 //       color: Colors.red,
//                 //       borderRadius: BorderRadius.circular(15),
//                 //       image:  DecorationImage(
//                 //         image: AssetImage(slid['image']),
//                 //         fit: BoxFit.cover,
//                 //       )
//                 //   ),
//                 // ),
//                 // const SizedBox(height: 8,),
//                 // Text(slid['title'], style: TextStyle(
//                 //   color: ColorConstants.starterWhite,
//                 //   fontSize: 11,
//                 //   fontWeight: FontWeight.w400,
//                 // ))
//               ],
//             );
//           }),
//     );
//   }
// }
//
