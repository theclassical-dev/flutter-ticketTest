import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticktest/screens/tick_view.dart';
import 'package:ticktest/utils/app_info_list.dart';
import 'package:ticktest/utils/app_layout.dart';
import 'package:ticktest/utils/app_styles.dart';
import 'package:ticktest/widgets/column_layout.dart';
import 'package:ticktest/widgets/tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle,),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              /*last column*/
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TickView(ticket: ticketList[0], isColor: true,),
              ),
              const SizedBox(height: 1),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15), vertical: AppLayout.getHeight(20)),
                margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start, isColor: false,),
                        AppColumnLayout(firstText: "55667 67666", secondText: "Passport", alignment: CrossAxisAlignment.end, isColor: false,)

                      ],
                    )
                    ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
