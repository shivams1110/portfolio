import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/constant.dart';
import 'package:portfolio/util/portfolio_utils.dart';
import 'package:portfolio/widgets/icon_with_url.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          AppLocalizations.of(context).myName,
          style: GoogleFonts.muli(
              color: Colors.white, fontSize: 48, fontWeight: FontWeight.w100),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          AppLocalizations.of(context).developer,
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
            AppLocalizations.of(context).contactMe,
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
                imageUrl: Constants.imageMedium,
                url: Constants.mediumUrl),
          ],
        ),
      ],
    );
  }
}
