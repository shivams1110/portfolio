import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/localization/translate_key.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32.0, top: 32.0),
            child: Text(
              'About Me',
              style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.w100),
            ),
          ),
          Container(
            width: 500,
            decoration: BoxDecoration(
                color: Colors.grey[200], shape: BoxShape.rectangle),
            padding: EdgeInsets.all(36.0),
            child: Text(
              TranslateKey.aboutMe,
              style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
          )
        ],
      ),
    );
  }
}
