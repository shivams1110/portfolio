import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/localization/translate_key.dart';
import 'package:portfolio/resource/constant.dart';
import 'package:portfolio/util/portfolio_utils.dart';
import 'package:portfolio/widgets/icon_with_url.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List<String> values = ['Android', 'Flutter', 'IOS'];
  String value;

  var index = 0;

  @override
  void initState() {
    value = values[0];
    Future.delayed(Duration(seconds: 2), animatedSwitcher);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool mediaQuery = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, top: 32.0),
        child: mediaQuery
            ? Column(
                children: [
                  Row(
                    children: [
                      getIntroWidget(),
                      Expanded(child: Container()),
                      getImageList()
                    ],
                  )
                ],
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [getIntroWidget(), getImageList()],
                ),
              ),
      ),
    );
  }

  Widget getIntroWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "I'm",
          style: GoogleFonts.muli(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.w100),
        ),
        Text(
          TranslateKey.myName,
          style: TextStyle(
              fontFamily: 'Saman',
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w100),
        ),
        SizedBox(
          height: 10,
        ),
        // AnimatedSwitcher(
        //   duration: Duration(milliseconds: 500),
        //   child: Text(
        //     value,
        //     textAlign: TextAlign.end,
        //     style: GoogleFonts.muli(
        //         color: Colors.white, fontSize: 48, fontWeight: FontWeight.w100),
        //   ),
        // ),
        Text(
          TranslateKey.developer,
          textAlign: TextAlign.end,
          style: GoogleFonts.muli(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.w100),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            PortfolioUtils.launchURL(url: Constants.resume);
          },
          child: Text(
            TranslateKey.contactMe,
            style: GoogleFonts.muli(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w100),
          ),
        ),
        Image.asset(
          Constants.imageFlutterAvatar,
          height: 300,
          width: 300,
        )
      ],
    );
  }

  Widget getImageList() {
    return Column(
      children: [
        Image.asset(
          Constants.mainImage,
          height: 500,
          width: 500,
        ),
        SizedBox(
          height: 16.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconWithUrl(
              imageUrl: Constants.imageFacebook,
              url: Constants.facebookUrl,
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: Constants.imageGithub,
              url: Constants.githubUrl,
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: Constants.imageLinkedin,
              url: Constants.linkedinUrl,
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: Constants.imageInstagram,
              url: Constants.instagramUrl,
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: Constants.imageTwitter,
              url: Constants.twitterUrl,
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
                imageUrl: Constants.imageMedium, url: Constants.mediumUrl),
          ],
        ),
      ],
    );
  }

  void animatedSwitcher() {
    setState(() {
      if (values.length > index - 1) {
        index++;
      } else {
        index = 0;
      }
      value = values[index];
      Future.delayed(Duration(seconds: 2), animatedSwitcher);
    });
  }
}
