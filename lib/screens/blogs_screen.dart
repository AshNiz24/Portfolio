// ignore_for_file: prefer_const_constructors

import 'package:ash_portfolio/screens/works_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import '../components.dart';
import 'about_screen.dart';
import 'landing_screen.dart';
import 'resume_screen.dart';

enum Nav { home, about, resume, works, blogs, contact }

class BlogsScreen extends StatelessWidget {
  const BlogsScreen({Key? key}) : super(key: key);
  static const String id = "/blogs";
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return ScaffoldGradientBackground(
      appBar: currentWidth <= 647
          ? AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              foregroundColor: Colors.pink,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              actions: [
                PopupMenuButton(
                    position: PopupMenuPosition.under,
                    padding: const EdgeInsets.all(10.0),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.3,
                    ),
                    color: Colors.white,
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    onSelected: (value) {
                      // if (value == Nav.home) {
                      //   Navigator.popAndPushNamed(context, LandingScreen.id);
                      // } else

                      if (value == Nav.home) {
                        Navigator.popAndPushNamed(context, LandingScreen.id);
                      } else if (value == Nav.resume) {
                        Navigator.popAndPushNamed(context, ResumeScreen.id);
                      } else if (value == Nav.about) {
                        Navigator.popAndPushNamed(context, AboutScreen.id);
                      } else if (value == Nav.works) {
                        Navigator.popAndPushNamed(
                            context, ProjectDisplayScreen.id);
                      }
                    },
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: Nav.home,
                            child: ShrinkedMenuButton(
                              buttonColor: [
                                Colors.white,
                                Colors.white,
                              ],
                              childColor: Colors.blueGrey,
                              icon: Icons.home_outlined,
                              label: "Home",
                            ),
                          ),
                          PopupMenuItem(
                            value: Nav.about,
                            child: ShrinkedMenuButton(
                              buttonColor: const [
                                Colors.white,
                                Colors.white,
                              ],
                              childColor: Colors.blueGrey,
                              icon: Icons.account_circle_outlined,
                              label: "About",
                            ),
                          ),
                          PopupMenuItem(
                              value: Nav.resume,
                              child: ShrinkedMenuButton(
                                buttonColor: const [
                                  Colors.white,
                                  Colors.white,
                                ],
                                childColor: Colors.blueGrey,
                                icon: Icons.list_alt_rounded,
                                label: "Resume",
                              )),
                          PopupMenuItem(
                            value: Nav.works,
                            child: ShrinkedMenuButton(
                              buttonColor: const [
                                Colors.white,
                                Colors.white,
                              ],
                              childColor: Colors.blueGrey,
                              icon: CupertinoIcons.cube,
                              label: "Works",
                            ),
                          ),
                          PopupMenuItem(
                            value: Nav.blogs,
                            child: ShrinkedMenuButton(
                              buttonColor: [
                                const Color(0xffFF512F),
                                const Color(0xffDD2476),
                                const Color(0xffFF512F).withOpacity(0.5),
                              ],
                              childColor: Colors.white,
                              icon: CupertinoIcons.bubble_left,
                              label: "Blogs",
                            ),
                          ),
                        ]),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          : null,
      gradient: LinearGradient(
        colors: [
          Colors.purple.shade100,
          Colors.pink.shade50,
          Colors.green.shade100,
          Colors.lightBlue.shade100,
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).textScaleFactor * 20,
          vertical: MediaQuery.of(context).textScaleFactor * 10,
        ),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              currentWidth > 647
                  ? Container(
                      color: Colors.transparent,
                      // width: MediaQuery.of(context).size.width * 0.76,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          PortfolioButton(
                            label: "Home",
                            icon: Icons.home_outlined,
                            isSelected: false,
                          ),
                          PortfolioButton(
                            label: "About",
                            icon: Icons.account_circle_outlined,
                            isSelected: false,
                          ),
                          PortfolioButton(
                            label: "Resume",
                            icon: Icons.list_alt_rounded,
                            isSelected: false,
                          ),
                          PortfolioButton(
                            label: "Works",
                            icon: CupertinoIcons.cube,
                            isSelected: false,
                          ),
                          PortfolioButton(
                            label: "Blogs",
                            icon: CupertinoIcons.bubble_left,
                            isSelected: true,
                          ),
                        ],
                      ),
                    )
                  : Container(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).textScaleFactor * 30,
                  bottom: MediaQuery.of(context).textScaleFactor * 60,
                  left: MediaQuery.of(context).textScaleFactor * 50,
                  right: MediaQuery.of(context).textScaleFactor * 5,
                ),
                // height: MediaQuery.of(context).size.height * 1.5,
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      MediaQuery.of(context).textScaleFactor * 20,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Blogs",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).textScaleFactor * 40,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoSlab',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    ProjectBlogTiles(
                      isMobSS: false,
                      isWeb: currentWidth > 1284,
                      url:
                          'https://ashnizaster.medium.com/weather-app-using-api-integration-in-flutter-d69f69e6bed7',
                      title: "Weather app using API integration in Flutter",
                      imgPath:
                          'https://miro.medium.com/max/875/1*e7HoY8ROLXuN1TQxpK-3yw.png',
                      hardware: 'None',
                      category: 'Tutorial',
                    ),
                    ProjectBlogTiles(
                      isMobSS: true,
                      isWeb: currentWidth > 1284,
                      url:
                          'https://ashnizaster.medium.com/a-simple-calculator-using-flutter-8ef52c9980d3',
                      title: "A simple Calculator using Flutter",
                      imgPath:
                          'https://miro.medium.com/max/794/1*6oRBaeuiALloJ1epQkF7mg.png',
                      hardware: 'None',
                      category: 'Tutorial',
                    ),
                    ProjectBlogTiles(
                      isMobSS: true,
                      isWeb: currentWidth > 1284,
                      url:
                          'https://ashnizaster.medium.com/make-your-own-custom-shapes-and-designs-using-custompaint-in-c8f97577f5e4',
                      title:
                          "Make your own custom shapes and designs using CustomPaint() in Flutter",
                      imgPath:
                          'https://miro.medium.com/max/1400/1*KFT1_J_dPsCkxRMTrcycKw.png',
                      hardware: 'None',
                      category: 'Tutorial',
                    ),
                    ProjectBlogTiles(
                      isMobSS: false,
                      isWeb: currentWidth > 1284,
                      url:
                          'https://ashnizaster.medium.com/how-to-send-sensor-data-to-firebase-firestore-using-google-app-script-part-2-432cb55f3f27',
                      title:
                          'Sending sensor data to firebase Firestore using google app script — Part 2',
                      imgPath:
                          'https://miro.medium.com/max/1400/1*u0acoDS9y6Opae4NimF1Ow.jpeg',
                      hardware: 'None',
                      category: 'Tutorial',
                    ),
                    ProjectBlogTiles(
                      isMobSS: false,
                      isWeb: currentWidth > 1284,
                      url:
                          'https://ashnizaster.medium.com/how-to-send-sensor-data-to-firebase-firestore-using-google-app-script-part-1-aea75ab6cbd6',
                      title:
                          'Sending sensor data to firebase Firestore using google app script — Part 1',
                      imgPath:
                          'https://miro.medium.com/max/1400/1*u0acoDS9y6Opae4NimF1Ow.jpeg',
                      hardware: 'None',
                      category: 'Tutorial',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
