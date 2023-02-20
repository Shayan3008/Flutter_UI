import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class DrawerAnimation extends StatelessWidget {
  final Widget widget1;
  final Widget widget2;
  final AnimationController controller;
  const DrawerAnimation(
      {super.key,
      required this.widget1,
      required this.widget2,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget1,
        GestureDetector(
          onTap: () => controller.forward(),
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
