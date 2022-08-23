import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticktest/utils/app_layout.dart';
import 'package:ticktest/utils/app_styles.dart';

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
                  Row(
                    children: [
                      Text("AHJ", style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      const Spacer(),
                      Text("Abuja", style: Styles.headLineStyle3.copyWith(color: Colors.white)),

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
