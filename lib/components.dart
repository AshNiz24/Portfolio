// ignore_for_file: prefer_const_constructors, avoid_web_libraries_in_flutter

import '../screens/about_screen.dart';
import '../screens/blogs_screen.dart';
import '../screens/landing_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/works_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'dart:html' as html;

class PortfolioButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;

  const PortfolioButton(
      {Key? key,
      required this.icon,
      required this.label,
      required this.isSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      // style:TextButtonSt,
      onTap: () {
        if (label == "Home") {
          Navigator.popAndPushNamed(context, LandingScreen.id);
        } else if (label == "About") {
          Navigator.popAndPushNamed(context, AboutScreen.id);
        } else if (label == "Resume") {
          Navigator.popAndPushNamed(context, ResumeScreen.id);
        } else if (label == "Works") {
          Navigator.popAndPushNamed(context, ProjectDisplayScreen.id);
        } else if (label == "Blogs") {
          Navigator.popAndPushNamed(context, BlogsScreen.id);
        }
        // else if (label == "Contact") {
        //   Navigator.popAndPushNamed(context, ContactScreen.id);
        // }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isSelected
                ? [
                    const Color(0xffFF512F),
                    const Color(0xffDD2476),
                    const Color(0xffFF512F).withOpacity(0.5),
                  ]
                : [
                    Colors.white,
                    Colors.white,
                  ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              12,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xffDD2476).withOpacity(0.2),
              blurRadius: 2,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.white : Colors.blueGrey,
                size: 20,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.blueGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ShrinkedMenuButton extends StatelessWidget {
  final List<Color> buttonColor;
  final Color childColor;
  final IconData icon;
  final String label;

  const ShrinkedMenuButton(
      {Key? key,
      required this.buttonColor,
      required this.childColor,
      required this.icon,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: buttonColor,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            12,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xffDD2476).withOpacity(0.2),
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: childColor,
              size: MediaQuery.of(context).textScaleFactor * 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              label,
              style: TextStyle(
                color: childColor,
                fontSize: MediaQuery.of(context).textScaleFactor * 12,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  // const SocialButton({Key? key}) : super(key: key);
  final String imageIconPath;
  final String url;
  const SocialButton({Key? key, required this.imageIconPath, required this.url})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(url, '_blank');
      },
      hoverColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(
          MediaQuery.of(context).textScaleFactor * 8,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).textScaleFactor * 6,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              MediaQuery.of(context).textScaleFactor * 10,
            ),
          ),
        ),
        child: Image(
          image: AssetImage(imageIconPath),
          width: MediaQuery.of(context).textScaleFactor * 22,
        ),
      ),
    );
  }
}

class PersonalAboutCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const PersonalAboutCard(
      {Key? key,
      required this.label,
      required this.value,
      required this.icon,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(
            MediaQuery.of(context).textScaleFactor * 8,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  MediaQuery.of(context).textScaleFactor * 7,
                ),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xffEEEEEE),
                  offset: Offset(1, 1),
                  blurRadius: 2,
                  spreadRadius: 1,
                )
              ]),
          // color: Colors.white,
          child: Center(
            child: Icon(
              icon,
              color: color,
              size: MediaQuery.of(context).textScaleFactor * 22,
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).textScaleFactor * 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.blueGrey.shade200,
                fontSize: MediaQuery.of(context).textScaleFactor * 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).textScaleFactor * 5,
            ),
            Text(
              value,
              style: TextStyle(
                color: Colors.blueGrey.shade900,
                fontSize: MediaQuery.of(context).textScaleFactor * 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class AboutRoleDesc extends StatelessWidget {
  final String title;
  final String desc;
  final Color bgColor;
  final Color iconColor;
  final String imagePath;
  final int iconSize;
  final bool isWeb;
  const AboutRoleDesc({
    Key? key,
    required this.title,
    required this.desc,
    required this.bgColor,
    required this.imagePath,
    required this.iconColor,
    required this.iconSize,
    required this.isWeb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width * 0.2,
        maxWidth: isWeb
            ? MediaQuery.of(context).size.width * 0.32
            : MediaQuery.of(context).size.width * 0.8,
      ),
      // height: MediaQuery.of(context).size.height * 0.2,
      padding: EdgeInsets.all(
        MediaQuery.of(context).textScaleFactor * 20,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            MediaQuery.of(context).textScaleFactor * 12,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageIcon(
            AssetImage(imagePath),
            color: iconColor,
            size: MediaQuery.of(context).textScaleFactor * iconSize,
          ),
          SizedBox(
            width: MediaQuery.of(context).textScaleFactor * 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).textScaleFactor * 18,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).textScaleFactor * 10,
                ),
                Text(
                  desc,
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  style: TextStyle(
                    height: MediaQuery.of(context).textScaleFactor * 1.5,
                    letterSpacing: MediaQuery.of(context).textScaleFactor * 2,
                    fontSize: MediaQuery.of(context).textScaleFactor * 15,
                    color: Colors.blueGrey.shade400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResumeTiles extends StatelessWidget {
  final String title;
  final String date;
  final String subtitle;
  final Color bgColor;
  final bool isWeb;
  const ResumeTiles({
    Key? key,
    required this.title,
    required this.date,
    required this.subtitle,
    required this.bgColor,
    required this.isWeb,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isWeb
          ? MediaQuery.of(context).size.width * 0.25
          : MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            MediaQuery.of(context).textScaleFactor * 15,
          ),
        ),
      ),
      // width: MediaQuery.of(context).size.width * 0.3,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).textScaleFactor * 15,
        vertical: MediaQuery.of(context).textScaleFactor * 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            date,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: MediaQuery.of(context).textScaleFactor * 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'Motserrat',
              letterSpacing: 0.7,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).textScaleFactor * 21,
          ),
          Text(
            title,
            softWrap: true,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              // height: -1,
              fontSize: MediaQuery.of(context).textScaleFactor * 20,
              fontFamily: 'Rubik-VariableFont_wght.ttf',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).textScaleFactor * 20,
          ),
          Text(
            subtitle,
            softWrap: true,
            style: TextStyle(
              color: Colors.grey.shade900,
              fontWeight: FontWeight.w200,
              fontSize: MediaQuery.of(context).textScaleFactor * 18,
              fontFamily: 'Rubik-VariableFont_wght.ttf',
            ),
          ),
        ],
      ),
    );
  }
}

class SkillsProgress extends StatelessWidget {
  final Color color;
  final double percent;
  final String skill;
  final bool isWeb;
  const SkillsProgress(
      {Key? key,
      required this.color,
      required this.percent,
      required this.skill,
      required this.isWeb})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: isWeb
            ? MediaQuery.of(context).size.width * 0.35
            : MediaQuery.of(context).size.width * 0.8,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.textScaleFactorOf(context) * 10,
                    bottom: MediaQuery.textScaleFactorOf(context) * 10,
                  ),
                  child: Text(
                    skill,
                    style: TextStyle(
                      fontSize: MediaQuery.textScaleFactorOf(context) * 15,
                      color: Colors.blueGrey.shade600,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat-VariableFont_wght.ttf',
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                    right: MediaQuery.textScaleFactorOf(context) * 10,
                    bottom: MediaQuery.textScaleFactorOf(context) * 10,
                  ),
                  child: Text(
                    '${percent * 100}%',
                    style: TextStyle(
                      fontSize: MediaQuery.textScaleFactorOf(context) * 16,
                      color: Colors.blueGrey.shade600,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat-VariableFont_wght.ttf',
                    ),
                  ),
                ),
              ],
            ),
            LinearPercentIndicator(
              // width: MediaQuery.of(context).size.width * 0.21,
              backgroundColor: const Color(0xffEDF2F2),
              barRadius: Radius.circular(
                MediaQuery.textScaleFactorOf(context) * 20,
              ),
              progressColor: color,
              percent: percent,
              animation: true,
              animationDuration: 500,
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeTags extends StatelessWidget {
  final String label;
  const ResumeTags({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChipTheme(
      data: const ChipThemeData(side: BorderSide.none),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: const Color(0xff526276),
            // letterSpacing: 1.5,
            fontSize: MediaQuery.textScaleFactorOf(context) * 15.5,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat-VariableFont_wght.ttf',
          ),
        ),
        padding: EdgeInsets.all(10),
        backgroundColor: Color(0xffEDF2F2),
      ),
    );
  }
}

class ProjectBlogTiles extends StatelessWidget {
  final String title;
  final String url;
  final String? lang;
  final bool isWeb;
  final String imgPath;
  final String category;
  final String hardware;
  final bool isMobSS;

  const ProjectBlogTiles(
      {Key? key,
      required this.title,
      required this.url,
      this.lang,
      required this.imgPath,
      required this.category,
      required this.hardware,
      required this.isWeb,
      required this.isMobSS})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        color: Color(0xffE6F7EF),
        margin: EdgeInsets.only(
          top: title.contains('Clima') ? 0 : 20,
        ),
        child: InkWell(
          onTap: () {
            html.window.open(url, '_blank');
          },
          hoverColor: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: isWeb
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        width: title.contains('Journy')
                            ? MediaQuery.of(context).size.width * 0.3
                            : MediaQuery.of(context).size.width * 0.12,
                        image: NetworkImage(
                          imgPath,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.01,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Title: $title',
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                letterSpacing: 1.5,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-VariableFont_wght.ttf',
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            lang != null
                                ? Text(
                                    'Languages: $lang',
                                    maxLines: 2,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      letterSpacing: 1.5,
                                      fontSize: MediaQuery.textScaleFactorOf(
                                              context) *
                                          20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          'Montserrat-VariableFont_wght.ttf',
                                    ),
                                  )
                                : Container(),
                            lang != null
                                ? SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  )
                                : Container(),
                            Text(
                              'Category: $category',
                              // maxLines: 2,
                              softWrap: true,
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                letterSpacing: 1.5,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-VariableFont_wght.ttf',
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Text(
                              'Hardware: $hardware',
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                letterSpacing: 1.5,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-VariableFont_wght.ttf',
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        width: isMobSS
                            ? MediaQuery.of(context).size.width * 0.5
                            : MediaQuery.of(context).size.width * 0.7,
                        image: NetworkImage(
                          imgPath,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.05,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Title: $title',
                              maxLines: 2,
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                letterSpacing: 1.5,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-VariableFont_wght.ttf',
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            lang != null
                                ? Text(
                                    'Languages: $lang',
                                    maxLines: 2,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.blueGrey.shade800,
                                      letterSpacing: 1.5,
                                      fontSize: MediaQuery.textScaleFactorOf(
                                              context) *
                                          20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily:
                                          'Montserrat-VariableFont_wght.ttf',
                                    ),
                                  )
                                : Container(),
                            lang != null
                                ? SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  )
                                : Container(),
                            Text(
                              'Category: $category',
                              // maxLines: 2,
                              softWrap: true,
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                letterSpacing: 1.5,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-VariableFont_wght.ttf',
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                            Text(
                              'Hardware: $hardware',
                              maxLines: 2,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                letterSpacing: 1.5,
                                fontSize:
                                    MediaQuery.textScaleFactorOf(context) * 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-VariableFont_wght.ttf',
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.015,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
