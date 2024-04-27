import 'package:assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_bottombar.dart';
import 'widgets/custom_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Lato',
      ),
      home: const Scaffold(
        appBar: CustomAppBar(),
        body: MyBody(),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
