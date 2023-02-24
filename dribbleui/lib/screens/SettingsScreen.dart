import 'package:dribbleui/configs/SizeConfig.dart';
import 'package:dribbleui/widgets/BoldText.dart';
import 'package:dribbleui/widgets/RegularTextWidget.dart';
import 'package:dribbleui/widgets/TextList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.horizantalAspect! * 3,
              ),
              Row(
                children: const [
                  BoldTextWidget(
                    text: 'Setting',
                    size: 7,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 3,
              ),
              const TextListWidget(
                list1: [
                  'Add account',
                  'Change Password',
                  'Change Plan',
                  'Upgrade plan',
                  'Multiple Account'
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoldTextWidget(text: 'Enable sync'),
                  Switch.adaptive(value: true, onChanged: ((value) {}))
                ],
              ),
              SizedBox(
                height: SizeConfig.verticalAspect! * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BoldTextWidget(text: 'Enable 2 step verification'),
                  Switch.adaptive(value: true, onChanged: ((value) {}))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
