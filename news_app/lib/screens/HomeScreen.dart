import 'package:flutter/material.dart';

import '../config/SizeConfig.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container();
  }
}
