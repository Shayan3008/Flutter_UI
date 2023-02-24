import 'package:dribbleui/configs/SizeConfig.dart';
import 'package:dribbleui/configs/WebImage.dart';
import 'package:dribbleui/widgets/BoldText.dart';
import 'package:dribbleui/widgets/RegularTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../configs/StyleConfig.dart';
import '../widgets/GridContainersWidget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back),
                  RegularTextWidget(
                    text: 'My Profile',
                  ),
                  Icon(Icons.vertical_distribute_outlined)
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 3,
              ),
              SizedBox(
                // width: SizeConfig.screenWidth,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 5),
                          color: Colors.grey.shade200)
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.horizantalAspect! * 13.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: SizeConfig.verticalAspect! * 3,
                        ),
                        Image.asset(checkImage('profilePic.png'), scale: 1),
                        SizedBox(
                          height: SizeConfig.verticalAspect! * 1.5,
                        ),
                        const BoldTextWidget(
                          text: 'MY NAME IS SHAYAN',
                        ),
                        SizedBox(
                          height: SizeConfig.verticalAspect! * 1.5,
                        ),
                        const RegularTextWidget(
                          text: 'Flutter Developer',
                          size: 5,
                        ),
                        SizedBox(
                          height: SizeConfig.verticalAspect! * 1.5,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Congue bibendum pellentesque mauris, nibh senectus .',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: SizeConfig.verticalAspect! * 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 4,
              ),
              Row(
                children: [
                  const Expanded(
                    child: BoldTextWidget(
                      text: 'My Folders',
                      size: 4.5,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add,
                          size: SizeConfig.horizantalAspect! * 8.5,
                        ),
                        Icon(
                          Icons.hourglass_top,
                          size: SizeConfig.horizantalAspect! * 8.5,
                        ),
                        Icon(
                          Icons.arrow_right,
                          size: SizeConfig.horizantalAspect! * 8.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 4,
              ),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1,
                  crossAxisCount: 2,
                  childAspectRatio: 21 / 16,
                ),
                itemCount: 4,
                itemBuilder: ((context, index) => GridContainersWidget(
                      color: list[index],
                      image: 'assets/GridImage.svg',
                      description: 'Mobile Apps',
                      subDescription: 'December 20.2020',
                    )),
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  BoldTextWidget(text: 'Recent Uploads'),
                  Icon(Icons.sort)
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blueAccent.withOpacity(0.3),
                        radius: 30,
                        child: Image.asset(
                          'doc.png',
                          scale: 0.8,
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          BoldTextWidget(text: 'Project.docs'),
                          Text('November 22 , 2020'),
                        ],
                      )
                    ],
                  ),
                  const Text('300kb'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
