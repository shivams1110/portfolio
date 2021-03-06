import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/widgets/icon_with_url.dart';

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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'I\'m \nShivam Sharma',
                            style: GoogleFonts.muli(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Android\nDeveloper',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.muli(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Contact me',
                              style: GoogleFonts.muli(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                          Image.asset(
                            'assets/images/flutter_avater.png',
                            height: 300,
                            width: 300,
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      getImageList()
                    ],
                  )
                ],
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'I\'m \nShivam Sharma',
                          style: GoogleFonts.muli(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Android\nDeveloper',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.muli(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Contact me',
                            style: GoogleFonts.muli(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        Image.asset(
                          'assets/images/flutter_avater.png',
                          height: 300,
                          width: 300,
                        )
                      ],
                    ),
                    getImageList()
                  ],
                ),
              ),
      ),
    );
  }

  Widget getImageList() {
    return Column(
      children: [
        Image.asset(
          'assets/images/my.jpg',
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
              imageUrl: 'assets/images/facebook.png',
              url: 'https://www.facebook.com/shivams1110',
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: 'assets/images/github.png',
              url: 'https://github.com/shivams1110',
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: 'assets/images/linkedin.png',
              url: 'https://www.linkedin.com/in/shivamsharma11/',
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: 'assets/images/instagram.png',
              url: 'https://www.instagram.com/official.shivam/',
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
              imageUrl: 'assets/images/twitter.png',
              url: 'https://twitter.com/shivams_me',
            ),
            SizedBox(
              width: 12,
            ),
            IconWithUrl(
                imageUrl: 'assets/images/medium.png',
                url: 'https://theshivamsharma.medium.com/'),
          ],
        ),
      ],
    );
  }
}