// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import 'package:ash_portfolio/components.dart';

import 'about_screen.dart';
import 'blogs_screen.dart';
import 'resume_screen.dart';
import 'works_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String id = "/";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 647) {
        return LandingScreenWeb();
      } else {
        return LandingScreenMob();
      }
    });
  }
}

class LandingScreenWeb extends StatelessWidget {
  const LandingScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
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
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                // width: MediaQuery.of(context).size.width * 0.76,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    PortfolioButton(
                      label: "Home",
                      icon: Icons.home_outlined,
                      isSelected: true,
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
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).textScaleFactor * 151,
                    backgroundColor: const Color(0xffDD2476),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).textScaleFactor * 150,
                      backgroundImage: const AssetImage('images/dp.png'),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).textScaleFactor * 20,
                  ),
                  Text(
                    'Ashna Nizam',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).textScaleFactor * 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).textScaleFactor * 10,
                  ),
                  Text(
                    "Flutter Developer | UI/UX Designer | Blogger",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).textScaleFactor * 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SocialButton(
                        imageIconPath: 'images/github-logo.png',
                        url: 'https://github.com/AshNiz24',
                      ),
                      SocialButton(
                        imageIconPath: 'images/youtube.png',
                        url:
                            'https://www.youtube.com/channel/UC2F7dFqZms_EWIUhfYdc3jA',
                      ),
                      SocialButton(
                        imageIconPath: 'images/medium.png',
                        url: 'https://ashnizaster.medium.com/',
                      ),
                      SocialButton(
                        imageIconPath: 'images/linkedin.png',
                        url:
                            'https://www.linkedin.com/in/ashna-nizam-b622901a2/',
                      ),
                      SocialButton(
                        imageIconPath: 'images/facebook.png',
                        url:
                            'https://www.facebook.com/DevBees-106948231678799/?ref=page_internal',
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum Nav { home, about, resume, works, blogs, contact }

class LandingScreenMob extends StatelessWidget {
  const LandingScreenMob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        foregroundColor: Colors.pink,
        backgroundColor: Colors.transparent,
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
              initialValue: Nav.home,
              onSelected: (value) {
                if (value == Nav.about) {
                  Navigator.popAndPushNamed(context, AboutScreen.id);
                } else if (value == Nav.resume) {
                  Navigator.popAndPushNamed(context, ResumeScreen.id);
                } else if (value == Nav.works) {
                  Navigator.popAndPushNamed(context, ProjectDisplayScreen.id);
                } else if (value == Nav.blogs) {
                  Navigator.popAndPushNamed(context, BlogsScreen.id);
                }
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: Nav.home,
                      child: ShrinkedMenuButton(
                        buttonColor: [
                          const Color(0xffFF512F),
                          const Color(0xffDD2476),
                          const Color(0xffFF512F).withOpacity(0.5),
                        ],
                        childColor: Colors.white,
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
                        buttonColor: const [
                          Colors.white,
                          Colors.white,
                        ],
                        childColor: Colors.blueGrey,
                        icon: CupertinoIcons.bubble_left,
                        label: "Blogs",
                      ),
                    ),
                  ]),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).textScaleFactor * 151,
              backgroundColor: const Color(0xffDD2476),
              child: CircleAvatar(
                radius: MediaQuery.of(context).textScaleFactor * 150,
                backgroundImage: const AssetImage('images/dp.png'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).textScaleFactor * 20,
            ),
            Text(
              'Ashna Nizam',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).textScaleFactor * 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).textScaleFactor * 10,
            ),
            Text(
              "Flutter Developer | UI/UX Designer | Blogger",
              style: TextStyle(
                fontSize: MediaQuery.of(context).textScaleFactor * 18,
                color: Colors.grey,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).textScaleFactor * 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SocialButton(
                  imageIconPath: 'images/github-logo.png',
                  url: 'https://github.com/AshNiz24',
                ),
                SocialButton(
                  imageIconPath: 'images/youtube.png',
                  url:
                      'https://www.youtube.com/channel/UC2F7dFqZms_EWIUhfYdc3jA',
                ),
                SocialButton(
                  imageIconPath: 'images/medium.png',
                  url: 'https://ashnizaster.medium.com/',
                ),
                SocialButton(
                  imageIconPath: 'images/linkedin.png',
                  url: 'https://www.linkedin.com/in/ashna-nizam-b622901a2/',
                ),
                SocialButton(
                  imageIconPath: 'images/facebook.png',
                  url:
                      'https://www.facebook.com/DevBees-106948231678799/?ref=page_internal',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
