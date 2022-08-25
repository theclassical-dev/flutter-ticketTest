import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  const AppLayoutBuilderWidget({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        print(
            "the width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / 6)
                  .floor(),
                  (index) => SizedBox(
                width: AppLayout.getWidth(5),
                height: AppLayout.getHeight(1),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor==null ? Colors.white :Colors.grey.shade300),
                ),
              )),
        );
      },
    );
  }
}
