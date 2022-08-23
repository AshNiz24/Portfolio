// ignore_for_file: prefer_const_constructors

import 'package:ash_portfolio/screens/landing_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import '../components.dart';
import 'blogs_screen.dart';
import 'resume_screen.dart';
import 'works_screen.dart';

enum Nav { home, about, resume, works, blogs, contact }

class AboutScreen extends StatefulWidget {
  static const String id = "/about";

  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1384) {
        return AboutScreenWeb();
      } else {
        return AboutScreenTab();
      }
    });
  }
}

class AboutScreenWeb extends StatelessWidget {
  const AboutScreenWeb({Key? key}) : super(key: key);

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
              // title: Text('${MediaQuery.of(context).size.width}'),
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
                      } else if (value == Nav.works) {
                        Navigator.popAndPushNamed(
                            context, ProjectDisplayScreen.id);
                      } else if (value == Nav.blogs) {
                        Navigator.popAndPushNamed(context, BlogsScreen.id);
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
                              buttonColor: [
                                const Color(0xffFF512F),
                                const Color(0xffDD2476),
                                const Color(0xffFF512F).withOpacity(0.5),
                              ],
                              childColor: Colors.white,
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
                            isSelected: true,
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
                    )
                  : Container(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).textScaleFactor * 30,
                  bottom: MediaQuery.of(context).textScaleFactor * 60,
                  left: MediaQuery.of(context).textScaleFactor * 50,
                  right: MediaQuery.of(context).textScaleFactor * 50,
                ),
                // height: MediaQuery.of(context).size.height * 1.5,
                width: MediaQuery.of(context).size.width * 0.75,
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
                          "About Me",
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.height * 0.6,
                          height: MediaQuery.of(context).size.height * 0.6,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('images/Ash Profile.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                MediaQuery.of(context).textScaleFactor * 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).textScaleFactor * 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Who Am I ?',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).textScaleFactor *
                                          30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).textScaleFactor * 10,
                              ),
                              Text(
                                "I am a Freelance Flutter developer from Kerala, India working in Mobile App development and Web development. Apart from that I am also a UI/UX designer and love the challenge of creating complex designs and implementing them into code.\n\nI have created many mobile and web applications. My aim is to make the world a better place by implementing creative solutions to the problems we face today. ",
                                softWrap: true,
                                style: TextStyle(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          1.5,
                                  letterSpacing:
                                      MediaQuery.of(context).textScaleFactor *
                                          2,
                                  fontSize:
                                      MediaQuery.of(context).textScaleFactor *
                                          16,
                                  color: Colors.blueGrey.shade400,
                                ),
                              ),
                              Text(
                                '\n Personal Info',
                                style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).textScaleFactor *
                                          30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).textScaleFactor * 35,
                              ),
                              Row(
                                children: [
                                  const PersonalAboutCard(
                                    label: 'E-mail',
                                    value: 'ashnizaster@gmail.com',
                                    icon: Icons.mail_outline_rounded,
                                    color: Color(0xff6AB5B9),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).textScaleFactor *
                                            150,
                                  ),
                                  const PersonalAboutCard(
                                    label: 'Location',
                                    value: 'Kerala, India',
                                    icon: CupertinoIcons.location_solid,
                                    color: Color(0xffFD7590),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Text(
                      "What I do",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 20,
                    ),
                    Row(
                      children: [
                        AboutRoleDesc(
                          isWeb: true,
                          iconSize: 50,
                          title: 'Ui/Ux Design',
                          desc:
                              'I provide creative and aesthetic UI designs based on client\'s demands. My UI/UX design services are available from Rs 20,000 or more based on the project.',
                          bgColor: const Color(0xffDE89FF).withOpacity(0.1),
                          imagePath: 'images/uiux.png',
                          iconColor: const Color(0xffDE89FF),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).textScaleFactor * 30,
                        ),
                        AboutRoleDesc(
                          isWeb: true,
                          iconSize: 40,
                          title: 'Application Developement',
                          desc:
                              'I provide fully functional and aesthetic mobile applications based on client\'s demands. My app developement services are available from Rs 20,000 or more based on the project.',
                          bgColor: const Color(0xffDDA10C).withOpacity(0.05),
                          imagePath: 'images/menu.png',
                          iconColor: const Color(0xffDDA10C),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 30,
                    ),
                    Row(
                      children: [
                        AboutRoleDesc(
                          isWeb: true,
                          iconSize: 50,
                          title: 'Content Creation',
                          desc:
                              'I do quality content in platforms like YouTube, Medium, and other social apps. My content includes video creation and editing, blog writing, creating posts etc and these services are available from Rs 50,000 or more based on the project.',
                          bgColor: const Color(0xffFF6080).withOpacity(0.08),
                          imagePath: 'images/content-creator.png',
                          iconColor: const Color(0xffFF6080),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).textScaleFactor * 30,
                        ),
                        AboutRoleDesc(
                          isWeb: true,
                          iconSize: 60,
                          title: 'Web Developement',
                          desc:
                              'I provide creative responsive and aesthetic Websites and Web apps based on client\'s demands. My knowledge of various web frameworks make my services invaluable. My services are available from Rs 30,000 onwards.',
                          bgColor: const Color(0xff269FFF).withOpacity(0.06),
                          imagePath: 'images/code.png',
                          iconColor: const Color(0xff269FFF),
                        ),
                      ],
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

class AboutScreenTab extends StatelessWidget {
  const AboutScreenTab({Key? key}) : super(key: key);

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
                      if (value == Nav.home) {
                        Navigator.popAndPushNamed(context, LandingScreen.id);
                      } else if (value == Nav.resume) {
                        Navigator.popAndPushNamed(context, ResumeScreen.id);
                      } else if (value == Nav.works) {
                        Navigator.popAndPushNamed(
                            context, ProjectDisplayScreen.id);
                      } else if (value == Nav.blogs) {
                        Navigator.popAndPushNamed(context, BlogsScreen.id);
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
                              buttonColor: [
                                const Color(0xffFF512F),
                                const Color(0xffDD2476),
                                const Color(0xffFF512F).withOpacity(0.5),
                              ],
                              childColor: Colors.white,
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
              if (currentWidth > 647)
                Container(
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
                        isSelected: true,
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
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).textScaleFactor * 30,
                  bottom: MediaQuery.of(context).textScaleFactor * 60,
                  left: MediaQuery.of(context).textScaleFactor * 50,
                  right: MediaQuery.of(context).textScaleFactor * 50,
                ),
                // height: MediaQuery.of(context).size.height * 1.5,
                width: MediaQuery.of(context).size.width * 0.75,
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
                          "About Me",
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/Ash Profile.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            MediaQuery.of(context).textScaleFactor * 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 20,
                    ),
                    Text(
                      'Who Am I ?',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 10,
                    ),
                    Text(
                      "I am a Freelance Flutter developer from Kerala, India working in Mobile App development and Web development. Apart from that I am also a UI/UX designer and love the challenge of creating complex designs and implementing them into code.\n\nI have created many mobile and web applications. My aim is to make the world a better place by implementing creative solutions to the problems we face today. ",
                      softWrap: true,
                      style: TextStyle(
                        height: MediaQuery.of(context).textScaleFactor * 1.5,
                        letterSpacing:
                            MediaQuery.of(context).textScaleFactor * 2,
                        fontSize: MediaQuery.of(context).textScaleFactor * 16,
                        color: Colors.blueGrey.shade400,
                      ),
                    ),
                    Text(
                      '\n Personal Info',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 35,
                    ),
                    const PersonalAboutCard(
                      label: 'E-mail',
                      value: 'ashnizaster@gmail.com',
                      icon: Icons.mail_outline_rounded,
                      color: Color(0xff6AB5B9),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 50,
                    ),
                    const PersonalAboutCard(
                      label: 'Location',
                      value: 'Kerala, India',
                      icon: CupertinoIcons.location_solid,
                      color: Color(0xffFD7590),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.08,
                    ),
                    Text(
                      "What I do",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).textScaleFactor * 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 20,
                    ),
                    AboutRoleDesc(
                      isWeb: false,
                      iconSize: 50,
                      title: 'Ui/Ux Design',
                      desc:
                          'I provide creative and aesthetic UI designs based on client\'s demands. My UI/UX design services are available from Rs 20,000 or more based on the project.',
                      bgColor: const Color(0xffDE89FF).withOpacity(0.1),
                      imagePath: 'images/uiux.png',
                      iconColor: const Color(0xffDE89FF),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 30,
                    ),
                    AboutRoleDesc(
                      isWeb: false,
                      iconSize: 40,
                      title: 'Application Developement',
                      desc:
                          'I provide fully functional and aesthetic mobile applications based on client\'s demands. My app developement services are available from Rs 20,000 or more based on the project.',
                      bgColor: const Color(0xffDDA10C).withOpacity(0.05),
                      imagePath: 'images/menu.png',
                      iconColor: const Color(0xffDDA10C),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 30,
                    ),
                    AboutRoleDesc(
                      isWeb: false,
                      iconSize: 50,
                      title: 'Content Creation',
                      desc:
                          'I do quality content in platforms like YouTube, Medium, and other social apps. My content includes video creation and editing, blog writing, creating posts etc and these services are available from Rs 50,000 or more based on the project.',
                      bgColor: const Color(0xffFF6080).withOpacity(0.08),
                      imagePath: 'images/content-creator.png',
                      iconColor: const Color(0xffFF6080),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).textScaleFactor * 30,
                    ),
                    AboutRoleDesc(
                      isWeb: false,
                      iconSize: 60,
                      title: 'Web Developement',
                      desc:
                          'I provide creative responsive and aesthetic Websites and Web apps based on client\'s demands. My knowledge of various web frameworks make my services invaluable. My services are available from Rs 30,000 onwards.',
                      bgColor: const Color(0xff269FFF).withOpacity(0.06),
                      imagePath: 'images/code.png',
                      iconColor: const Color(0xff269FFF),
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
