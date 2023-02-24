import 'package:dribbleui/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class DrawerAnimation extends StatelessWidget {
  final Widget widget2;
  final AnimationController controller;
  const DrawerAnimation(
      {super.key, required this.widget2, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DrawerWidget(controller: controller),
        GestureDetector(
          onTap: () => {
            print('Hello World'),
            controller.forward(),
          },
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, child) => Transform.scale(
              scale: 1 - (0.5 * controller.value),
              alignment: Alignment.centerRight,
              child: widget2,
            ),
          ),
        ),
      ],
    );
  }
}
