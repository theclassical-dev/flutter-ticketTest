import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticktest/utils/app_layout.dart';
import 'package:ticktest/utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \n you looking for ?", style: Styles.headLineStyle.copyWith(fontSize: 35),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
           child:  Container(
             padding: const EdgeInsets.all(3.5),
             child: Row(
               children: [
                 /*
                * airline ticket
                * */
                 Container(
                     width: size.width*.44,
                     padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50),)),
                         color: Colors.white
                     ),
                     child: Center(
                       child: Text("Airline tickets"),
                     )
                 ),
                 /*
                * hotels
                * */
                 Container(
                     width: size.width*.44,
                     padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50),)),
                       color: Colors.transparent
                     ),
                     child: Center(
                       child: Text("Hotels"),
                     )
                 ),
               ],
             ),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                 color: const Color(0xFFF4F6FD)

             ),
           ),
         ),
          /* second  container*/
          Gap(AppLayout.getHeight(25)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.circular(AppLayout.getWidth(10),)
            ),
            child: Row(
              children: [
                const Icon(Icons.flight_takeoff_rounded, color: Color(0xFFBFC2DF),),
                Gap(AppLayout.getWidth(10)),
                Text("Departure")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
