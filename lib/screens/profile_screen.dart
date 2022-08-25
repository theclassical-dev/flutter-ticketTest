import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticktest/utils/app_layout.dart';

import '../utils/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/img_1.png"
                    )
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle,),
                  Gap(AppLayout.getHeight(2)),
                  Text("New-York", style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  ),),
                  Gap(AppLayout.getHeight(8)),
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(3), vertical: AppLayout.getHeight(3)),
                    // padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                      color: const Color(0xFFFEF4F3)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white, size: 15
                          ),
                        ),
                        Gap(AppLayout.getHeight(5)),
                        const Text("Premium status", style: TextStyle(
                          color: Color(0xFF526799), fontWeight: FontWeight.w600 
                        ),),
                        Gap(AppLayout.getHeight(5)),

                      ],
                    ),
                  )

                ],
              ),
              const Spacer(),
              Column(

                children: [
                  InkWell(
                    onTap: (){
                      print("i dey work no kill me");
                    },
                      child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
