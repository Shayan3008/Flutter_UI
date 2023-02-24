import 'package:dribbleui/animation/DrawerAnimation.dart';
import 'package:dribbleui/screens/HomeScreen.dart';
import 'package:dribbleui/screens/Profile.dart';
import 'package:dribbleui/screens/mainScreen.dart';
import 'package:dribbleui/widgets/Drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class GridContainerOne extends StatelessWidget {
  const GridContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
    );
  }
}

class GridContainerTwo extends StatelessWidget {
  const GridContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
