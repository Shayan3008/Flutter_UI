import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../configs/SizeConfig.dart';
import '../configs/StyleConfig.dart';
import 'BoldText.dart';

class GridContainersWidget extends StatelessWidget {
  final Color color;
  final String image;
  final String description;
  final String subDescription;
  const GridContainersWidget(
      {super.key,
      required this.image,
      required this.description,
      required this.subDescription,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color.withOpacity(0.2),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.horizantalAspect! * 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    image,
                    color: Colors.orange,
                  ),
                  Image.asset(
                    'assets/IconForGrid.png',
                    color: Colors.orange,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 1,
              ),
              BoldTextWidget(
                text: description,
                color: Colors.orange,
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 1,
              ),
              Text(
                subDescription,
                style: kQuestrialSemiBold.copyWith(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
