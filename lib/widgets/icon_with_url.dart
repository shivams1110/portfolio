import 'package:flutter/material.dart';
import 'package:portfolio/util/portfolio_utils.dart';

class IconWithUrl extends StatelessWidget {
  final String imageUrl;
  final String url;
  final double size;

  const IconWithUrl(
      {Key key, @required this.imageUrl, this.size = 30, @required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(imageUrl),
      iconSize: 30,
      onPressed: () {
        PortfolioUtils.launchURL(url: url);
      },
    );
  }
}
