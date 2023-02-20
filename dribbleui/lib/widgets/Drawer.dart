import 'package:dribbleui/widgets/BoldText.dart';
import 'package:flutter/material.dart';

import '../configs/SizeConfig.dart';
import '../configs/StyleConfig.dart';

class DrawerWidget extends StatelessWidget {
  final AnimationController controller;
  const DrawerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      width: double.infinity,
      child: Scaffold(
        backgroundColor: Colors.blueAccent.withOpacity(0.2),
        body: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        40,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/profilePic.png', scale: 1.4),
                        SizedBox(
                          width: SizeConfig.horizantalAspect! * 1.5,
                        ),
                        const BoldTextWidget(
                          text: 'Savannah Nguyen',
                          size: 5,
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (() => controller.reverse()),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: SizeConfig.horizantalAspect! * 3,
                    child: Image.asset('/Icon.png'),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
