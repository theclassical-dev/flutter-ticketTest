import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticktest/utils/app_layout.dart';
import 'package:ticktest/utils/app_styles.dart';
import 'package:ticktest/widgets/thick_container.dart';

class TickView extends StatelessWidget {
  const TickView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // first row on the card
                  Row(
                    children: [
                      Text("AHJ", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      // const Spacer(),
                      Expanded(child: Container()),
                      //the small cricle
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("the width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1,child: DecoratedBox(decoration: BoxDecoration(
                                      color: Colors.white
                                  ),),
                                  )),
                                );

                              },

                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,))),
                        ],
                      )),

                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("ABJ", style: Styles.headLineStyle3.copyWith(color: Colors.white)),

                    ],
                  ),
                  const Gap(3),
                  //second row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text("New-City", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100, child: Text("ABUJA", textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
