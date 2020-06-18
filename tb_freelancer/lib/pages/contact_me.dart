import 'package:flutter/material.dart';
import 'package:tb_freelancer/styles/contact_me_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800)
          return pcView(context);
        else
          return phoneView(context);
      }),
    );
  }

  Widget pcView(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Contact Me!",
            style: contactHeaderStyle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TODO add your social media and points of contact

              contactImage("https://instagram.com/", 'igLogo.png',
                  MediaQuery.of(context).size.height / 6),
              contactImage("https://twitter.com/", 'twitterLogo.png',
                  MediaQuery.of(context).size.height / 6),
              contactImage("https://github.com/", 'githubLogo.png',
                  MediaQuery.of(context).size.height / 6),
              Flexible(
                  child: Container(
                      child: Text(
                "yourmail@email.com",
                style: emailStyle(),
                overflow: TextOverflow.ellipsis,
              ))),
            ],
          ),
        ],
      ),
    );
  }

  Widget phoneView(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Contact Me!",
            style: contactHeaderStyle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //TODO add your social media and points of contact

              contactImage("https://instagram.com/", 'igLogo.png',
                  MediaQuery.of(context).size.height / 10),
              contactImage("https://twitter.com/", 'twitterLogo.png',
                  MediaQuery.of(context).size.height / 10),
              contactImage("https://github.com/", 'githubLogo.png',
                  MediaQuery.of(context).size.height / 10),
              Flexible(
                  child: Container(
                      child: Text(
                "yourmail@email.com",
                style: emailStyle(),
                overflow: TextOverflow.visible,
              ))),
            ],
          ),
        ],
      ),
    );
  }

  Widget contactImage(String profileUrl, String assetPath, double height) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: InkWell(
        child: Container(
          child: Image.asset(
            assetPath,
          ),
          height: height,
        ),
        onTap: () {
          launchURL(profileUrl);
        },
      ),
    );
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
