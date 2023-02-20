import 'package:dribbleui/animation/DrawerAnimation.dart';
import 'package:dribbleui/screens/HomeScreen.dart';
import 'package:dribbleui/widgets/Drawer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DrawerAnimation(
      widget1: DrawerWidget(
        controller: _controller,
      ),
      widget2: const HomeScreen(),
      controller: _controller,
    );
  }
}
