import 'package:flutter/material.dart';
import 'package:portfolio/screen/landing_screen/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      localizationsDelegates:
          AppLocalizations.localizationsDelegates, // Add this line
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
