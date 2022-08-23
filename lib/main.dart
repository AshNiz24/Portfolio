import 'package:flutter/material.dart';
import '../screens/landing_screen.dart';
import '../screens/about_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/works_screen.dart';
import '../screens/blogs_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Ashna Nizam',
    debugShowCheckedModeBanner: false,
    // initialRoute: LandingScreen.id,
    routes: {
      LandingScreen.id: (context) => const LandingScreen(),
      AboutScreen.id: (context) => const AboutScreen(),
      ResumeScreen.id: (context) => const ResumeScreen(),
      ProjectDisplayScreen.id: (context) => const ProjectDisplayScreen(),
      // ContactScreen.id: (context) => const ContactScreen(),
      BlogsScreen.id: (context) => const BlogsScreen(),
    },
  ));
}
