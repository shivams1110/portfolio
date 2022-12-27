import 'package:flutter/material.dart';
import 'package:portfolio/screen/aboutme/about_me.dart';
import 'package:portfolio/screen/experience/career_screen.dart';
import 'package:portfolio/screen/landing_screen/landing_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          LandingScreen(),
          AboutMe(),
          ExperienceScreen()
        ],
      ),
    );
  }
}
