import 'package:dribbleui/configs/SizeConfig.dart';
import 'package:dribbleui/configs/StyleConfig.dart';
import 'package:dribbleui/screens/SettingsScreen.dart';
import 'package:dribbleui/widgets/BoldText.dart';
import 'package:dribbleui/widgets/GridContainersWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BoldTextWidget(text: 'Your Dribbbox'),
                Icon(
                  Icons.menu,
                ),
              ],
            ),
            SizedBox(
              height: (SizeConfig.screenHeight! / 100) * 4,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(width: 1, color: Colors.grey),
                ),
                hintText: 'Search Folder',
                hintStyle: kQuestrialMedium,
                prefixIcon: Icon(
                  Icons.search,
                  size: SizeConfig.horizantalAspect! * 7,
                ),
              ),
            ),
            SizedBox(
              height: (SizeConfig.screenHeight! / 100) * 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Recent',
                      style: kQuestrialSemiBold.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.horizantalAspect! * 2,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: SizeConfig.horizantalAspect! * 4,
                    ),
                  ],
                ),
                const Icon(Icons.filter_alt)
              ],
            ),
            SizedBox(
              height: (SizeConfig.screenHeight! / 100) * 2,
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
                    )))
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const SettingsScreen(),
            ),
          );
        }),
        child: const Icon(Icons.settings),
      ),
    );
  }
}
