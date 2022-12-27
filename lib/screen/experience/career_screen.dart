import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/localization/translate_key.dart';

class ExperienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'My Experience',
              style: GoogleFonts.muli(
                  color: Colors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.w100),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 12),
                  child: Text(
                    'Karnival',
                    style: GoogleFonts.muli(
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
                    'I am working here as Mobile Application Developer from June 2021, Here I take care of both Android & iOS Application from Scratch to till Publication. And I also do proper testing on my side and check all possible scenario. ',
                    style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, bottom: 12, top: 12),
                  child: Text(
                    'Nuclei',
                    style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.rectangle),
                  padding: EdgeInsets.all(36.0),
                  child: Text(
                    'I started my journey as Mobile Developer from Nov 2018, I joined here in Android Team. I developed here multiple SDK for Android Platform in Java, These SDK\'s are Recharge, BillPayment and Donation, after that I moved to Flutter Team, where I developed GiftCard SDK for Android in Flutter. May 2021 was my last month in Nuclei as Mobile Developer.',
                    style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16.0, bottom: 12, top: 12),
                  child: Text(
                    'Royalways',
                    style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  width: 500,
                  decoration: BoxDecoration(
                      color: Colors.grey[200], shape: BoxShape.rectangle),
                  padding: EdgeInsets.all(36.0),
                  child: Text(
                    'This was my First company where I started my career as Android Developer in Sep 2016. Here I was the first person as Android Developer, Here I learned alot by myself and trying to implement best practice for Android Application. I worked on different type of application such as E-commerce and Employee Management or tracking. Oct 2018 was my last month in Royalways as Android Developer.',
                    style: GoogleFonts.muli(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
