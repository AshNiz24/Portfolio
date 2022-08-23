// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ash_portfolio/screens/about_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';
import '../components.dart';
import 'blogs_screen.dart';
import 'landing_screen.dart';
import 'works_screen.dart';

enum Nav { home, about, resume, works, blogs, contact }

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  static const String id = "/resume";

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
                      } else if (value == Nav.about) {
                        Navigator.popAndPushNamed(context, AboutScreen.id);
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
                                buttonColor: [
                                  const Color(0xffFF512F),
                                  const Color(0xffDD2476),
                                  const Color(0xffFF512F).withOpacity(0.5),
                                ],
                                childColor: Colors.white,
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
                            isSelected: false,
                          ),
                          PortfolioButton(
                            label: "Resume",
                            icon: Icons.list_alt_rounded,
                            isSelected: true,
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
                  // left: MediaQuery.of(context).textScaleFactor * 50,
                  // right: MediaQuery.of(context).textScaleFactor * 5,
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
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).textScaleFactor * 50,
                        right: MediaQuery.of(context).textScaleFactor * 5,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Resume",
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
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    currentWidth > 1256
                        ? Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).textScaleFactor * 50,
                              right:
                                  MediaQuery.of(context).textScaleFactor * 25,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.book,
                                          size: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              28,
                                          color: const Color(0xffF95054),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              5,
                                        ),
                                        Text(
                                          'Education',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: MediaQuery.of(context)
                                                    .textScaleFactor *
                                                28,
                                            fontFamily: 'Rubik',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title:
                                          'B. Tech Electrical and Electronics Engineering',
                                      date: '2018-2022',
                                      subtitle:
                                          'College of Engineering Trivandrum',
                                      bgColor: Color(0xffFFF4F4),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: '12th ISCE',
                                      date: '2017-2018',
                                      subtitle: 'St. Thomas Residential School',
                                      bgColor: Color(0xffFFF1FB),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: '10th ICSE',
                                      date: '2015-2016',
                                      subtitle: 'St. Thomas Residential School',
                                      bgColor: Color(0xffFFF4F4),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).textScaleFactor *
                                          25,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          CupertinoIcons.briefcase,
                                          size: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              28,
                                          color: const Color(0xffF95054),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              5,
                                        ),
                                        Text(
                                          'Experience',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: MediaQuery.of(context)
                                                    .textScaleFactor *
                                                28,
                                            fontFamily: 'Rubik',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: 'Industrial Automation Trainee',
                                      date: '2019',
                                      subtitle:
                                          'Bosch Rexroth, College of Engineering Trivandrum',
                                      bgColor: Color(0xffEEF5FA),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: 'Flutter UI/UX developer intern',
                                      date: '2021',
                                      subtitle:
                                          'VAMS, Veterinary Services Pvt. Ltd',
                                      bgColor: Color(0xffF2F4FF),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: 'Trainee',
                                      date: '2019-2020',
                                      subtitle: 'OSM Geo Mapping NSS',
                                      bgColor: Color(0xffEEF5FA),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).textScaleFactor *
                                          25,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // SizedBox(
                                    //   height: MediaQuery.of(context).size.height * 0.05,
                                    // ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.emoji_events_outlined,
                                          size: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              28,
                                          color: const Color(0xffF95054),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .textScaleFactor *
                                              5,
                                        ),
                                        Text(
                                          'Awards',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800,
                                            fontSize: MediaQuery.of(context)
                                                    .textScaleFactor *
                                                28,
                                            fontFamily: 'Rubik',
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: 'Mathwiz Winner',
                                      date: '2021',
                                      subtitle:
                                          'ISTE, Mar Baselios College of Engineering, Trivandrum',
                                      bgColor: Color(0xffFCF4FF),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),
                                    const ResumeTiles(
                                      isWeb: true,
                                      title: 'Concevoir(UI/UX Design) Winner',
                                      date: '2021',
                                      subtitle:
                                          'ISTE, Mar Baselios College of Engineering',
                                      bgColor: Color(0xffFCF9F2),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.of(context)
                                              .textScaleFactor *
                                          20,
                                    ),

                                    const ResumeTiles(
                                      isWeb: true,
                                      title: 'Onboard Computer Subsystem team',
                                      date: '2019-2020',
                                      subtitle:
                                          'CETSAT, Satellite Program, CET, Trivandrum',
                                      bgColor: Color(0xffFCF4FF),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).textScaleFactor * 50,
                              right:
                                  MediaQuery.of(context).textScaleFactor * 25,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.book,
                                      size: MediaQuery.of(context)
                                              .textScaleFactor *
                                          28,
                                      color: const Color(0xffF95054),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context)
                                              .textScaleFactor *
                                          5,
                                    ),
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: MediaQuery.of(context)
                                                .textScaleFactor *
                                            28,
                                        fontFamily: 'Rubik',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title:
                                      'B. Tech Electrical and Electronics Engineering',
                                  date: '2018-2022',
                                  subtitle: 'College of Engineering Trivandrum',
                                  bgColor: Color(0xffFFF4F4),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: '12th ISCE',
                                  date: '2017-2018',
                                  subtitle: 'St. Thomas Residential School',
                                  bgColor: Color(0xffFFF1FB),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: '10th ICSE',
                                  date: '2015-2016',
                                  subtitle: 'St. Thomas Residential School',
                                  bgColor: Color(0xffFFF4F4),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          25,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.briefcase,
                                      size: MediaQuery.of(context)
                                              .textScaleFactor *
                                          28,
                                      color: const Color(0xffF95054),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context)
                                              .textScaleFactor *
                                          5,
                                    ),
                                    Text(
                                      'Experience',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: MediaQuery.of(context)
                                                .textScaleFactor *
                                            28,
                                        fontFamily: 'Rubik',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: 'Industrial Automation Trainee',
                                  date: '2019',
                                  subtitle:
                                      'Bosch Rexroth, College of Engineering Trivandrum',
                                  bgColor: Color(0xffEEF5FA),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: 'Flutter UI/UX developer intern',
                                  date: '2021',
                                  subtitle:
                                      'VAMS, Veterinary Services Pvt. Ltd',
                                  bgColor: Color(0xffF2F4FF),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: 'Trainee',
                                  date: '2019-2020',
                                  subtitle: 'OSM Geo Mapping NSS',
                                  bgColor: Color(0xffEEF5FA),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          25,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.emoji_events_outlined,
                                      size: MediaQuery.of(context)
                                              .textScaleFactor *
                                          28,
                                      color: const Color(0xffF95054),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context)
                                              .textScaleFactor *
                                          5,
                                    ),
                                    Text(
                                      'Awards',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                        fontSize: MediaQuery.of(context)
                                                .textScaleFactor *
                                            28,
                                        fontFamily: 'Rubik',
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: 'Mathwiz Winner',
                                  date: '2021',
                                  subtitle:
                                      'ISTE, Mar Baselios College of Engineering, Trivandrum',
                                  bgColor: Color(0xffFCF4FF),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: 'Concevoir(UI/UX Design) Winner',
                                  date: '2021',
                                  subtitle:
                                      'ISTE, Mar Baselios College of Engineering',
                                  bgColor: Color(0xffFCF9F2),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).textScaleFactor *
                                          20,
                                ),
                                const ResumeTiles(
                                  isWeb: false,
                                  title: 'Onboard Computer Subsystem team',
                                  date: '2019-2020',
                                  subtitle:
                                      'CETSAT, Satellite Program, CET, Trivandrum',
                                  bgColor: Color(0xffFCF4FF),
                                ),
                              ],
                            ),
                          ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.textScaleFactorOf(context) * 50,
                        vertical: MediaQuery.textScaleFactorOf(context) * 50,
                      ),
                      width: double.infinity,
                      // height: 475,
                      color: const Color(0xffF8FBFB),
                      child: currentWidth > 1292
                          ? Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: MediaQuery.textScaleFactorOf(
                                                context) *
                                            15,
                                      ),
                                      child: Text(
                                        'Working Skills',
                                        style: TextStyle(
                                          letterSpacing: 1.5,
                                          fontSize:
                                              MediaQuery.textScaleFactorOf(
                                                      context) *
                                                  20,
                                          fontWeight: FontWeight.w600,
                                          fontFamily:
                                              'Montserrat-VariableFont_wght.ttf',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: MediaQuery.textScaleFactorOf(
                                              context) *
                                          25,
                                    ),
                                    const SkillsProgress(
                                      isWeb: true,
                                      skill: 'Flutter',
                                      color: Color(0xffFF6464),
                                      percent: 0.95,
                                    ),
                                    SizedBox(
                                      height: MediaQuery.textScaleFactorOf(
                                              context) *
                                          15,
                                    ),
                                    const SkillsProgress(
                                      isWeb: true,
                                      skill: 'Web Developement',
                                      color: Color(0xff9272D4),
                                      percent: 0.75,
                                    ),
                                    SizedBox(
                                      height: MediaQuery.textScaleFactorOf(
                                              context) *
                                          15,
                                    ),
                                    const SkillsProgress(
                                      isWeb: true,
                                      skill: 'Photoshop',
                                      color: Color(0xff5185D4),
                                      percent: 0.85,
                                    ),
                                    SizedBox(
                                      height: MediaQuery.textScaleFactorOf(
                                              context) *
                                          15,
                                    ),
                                    const SkillsProgress(
                                      isWeb: true,
                                      skill: 'Illustrator',
                                      color: Color(0xffCA56F2),
                                      percent: 0.8,
                                    ),
                                    SizedBox(
                                      height: MediaQuery.textScaleFactorOf(
                                              context) *
                                          15,
                                    ),
                                    const SkillsProgress(
                                      isWeb: true,
                                      skill: 'UI/UX design',
                                      color: Color(0xffFFCF5F),
                                      percent: 0.9,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.08,
                                ),
                                SizedBox(
                                  // height: 500,
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  // color: Colors.blue,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Knowledge",
                                            style: TextStyle(
                                              letterSpacing: 1.5,
                                              fontSize:
                                                  MediaQuery.textScaleFactorOf(
                                                          context) *
                                                      20,
                                              fontWeight: FontWeight.w600,
                                              fontFamily:
                                                  'Montserrat-VariableFont_wght.ttf',
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Wrap(
                                          runSpacing: 30,
                                          spacing: 20,
                                          children: [
                                            ResumeTags(label: 'Flutter'),
                                            ResumeTags(label: 'UI/UX design'),
                                            ResumeTags(label: 'Dart'),
                                            ResumeTags(label: 'Python'),
                                            ResumeTags(label: 'Java'),
                                            ResumeTags(label: 'Figma'),
                                            ResumeTags(label: 'Canva'),
                                            ResumeTags(label: 'GitHub'),
                                            ResumeTags(label: 'HTML/CSS'),
                                            ResumeTags(label: 'YouTube'),
                                            ResumeTags(
                                                label: 'Adobe Photoshop'),
                                            ResumeTags(
                                                label: 'Adobe Illustrator'),
                                            ResumeTags(label: 'Video Editing'),
                                            // Container(
                                            //   margin: EdgeInsets.only(
                                            //     left: 10,
                                            //     right: 10,
                                            //   ),
                                            //   padding: EdgeInsets.symmetric(
                                            //     vertical: 10,
                                            //     horizontal: 15,
                                            //   ),
                                            //   decoration: BoxDecoration(
                                            //     color: Color(0xffEDF2F2),
                                            //     borderRadius: BorderRadius.all(
                                            //       Radius.circular(5),
                                            //     ),
                                            //   ),
                                            //   child: Center(
                                            //     child: Text(
                                            //       'Digital Design',
                                            //       style: TextStyle(
                                            //         color: Color(0xff526276),
                                            //         // letterSpacing: 1.5,
                                            //         fontSize:
                                            //             MediaQuery.textScaleFactorOf(
                                            //                     context) *
                                            //                 14,
                                            //         fontWeight: FontWeight.w400,
                                            //         fontFamily:
                                            //             'Montserrat-VariableFont_wght.ttf',
                                            //       ),
                                            //     ),
                                            //   ),
                                            // )
                                          ]),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.textScaleFactorOf(context) *
                                            15,
                                  ),
                                  child: Text(
                                    'Working Skills',
                                    style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontSize: MediaQuery.textScaleFactorOf(
                                              context) *
                                          20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          'Montserrat-VariableFont_wght.ttf',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.textScaleFactorOf(context) *
                                          25,
                                ),
                                const SkillsProgress(
                                  isWeb: false,
                                  skill: 'Flutter',
                                  color: Color(0xffFF6464),
                                  percent: 0.95,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.textScaleFactorOf(context) *
                                          15,
                                ),
                                const SkillsProgress(
                                  isWeb: false,
                                  skill: 'Web Developement',
                                  color: Color(0xff9272D4),
                                  percent: 0.75,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.textScaleFactorOf(context) *
                                          15,
                                ),
                                const SkillsProgress(
                                  isWeb: false,
                                  skill: 'Photoshop',
                                  color: Color(0xff5185D4),
                                  percent: 0.85,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.textScaleFactorOf(context) *
                                          15,
                                ),
                                const SkillsProgress(
                                  isWeb: false,
                                  skill: 'Illustrator',
                                  color: Color(0xffCA56F2),
                                  percent: 0.8,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.textScaleFactorOf(context) *
                                          15,
                                ),
                                const SkillsProgress(
                                  isWeb: false,
                                  skill: 'UI/UX design',
                                  color: Color(0xffFFCF5F),
                                  percent: 0.9,
                                ),
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.03,
                                ),
                                SizedBox(
                                  // height: 500,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  // color: Colors.blue,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Knowledge",
                                            style: TextStyle(
                                              letterSpacing: 1.5,
                                              fontSize:
                                                  MediaQuery.textScaleFactorOf(
                                                          context) *
                                                      20,
                                              fontWeight: FontWeight.w600,
                                              fontFamily:
                                                  'Montserrat-VariableFont_wght.ttf',
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Wrap(
                                          runSpacing: 30,
                                          spacing: 20,
                                          children: [
                                            ResumeTags(label: 'Flutter'),
                                            ResumeTags(label: 'UI/UX design'),
                                            ResumeTags(label: 'Dart'),
                                            ResumeTags(label: 'Python'),
                                            ResumeTags(label: 'Java'),
                                            ResumeTags(label: 'Figma'),
                                            ResumeTags(label: 'Canva'),
                                            ResumeTags(label: 'GitHub'),
                                            ResumeTags(label: 'HTML/CSS'),
                                            ResumeTags(label: 'YouTube'),
                                            ResumeTags(
                                                label: 'Adobe Photoshop'),
                                            ResumeTags(
                                                label: 'Adobe Illustrator'),
                                            ResumeTags(label: 'Video Editing'),
                                          ]),
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
