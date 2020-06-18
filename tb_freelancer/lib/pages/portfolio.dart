import 'package:flutter/material.dart';
import 'package:tb_freelancer/styles/portfolio_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800)
          return pcView(context);
        else
          return phoneView(context);
      }),
    );
  }

  Widget pcView(BuildContext context) {
    return Column(children: [
      Text(
        "My Portfolio",
        style: portfolioHeaderStyle(),
      ),
      Wrap(direction: Axis.horizontal, children: [
        portfolioCard(
            MediaQuery.of(context).size.width / 4, 'https://google.com/'),
        portfolioCard(
            MediaQuery.of(context).size.width / 4, 'https://flutter.dev/'),
        portfolioCard(
            MediaQuery.of(context).size.width / 4, 'https://flutter.dev/'),
      ])
    ]);
  }

  Widget phoneView(BuildContext context) {
    return Column(children: [
      Text(
        "My Portfolio",
        style: portfolioHeaderStyle(),
      ),
      portfolioCard(
          MediaQuery.of(context).size.width / 1.25, 'https://google.com/'),
      portfolioCard(
          MediaQuery.of(context).size.width / 1.25, 'https://flutter.dev/'),
      portfolioCard(
          MediaQuery.of(context).size.width / 1.25, 'https://flutter.dev/'),
    ]);
  }

  Widget portfolioCard(double width, String url) {
    return InkWell(
      splashColor: Colors.black,
      onTap: () {
        launchURL(url);
      },
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SizedBox(
          width: width,
          child: Card(
              child: Wrap(
            direction: Axis.vertical,
            children: [
              Container(
                  child: Image.asset(
                'avatar.png',
                width: width,
              )),
              Container(
                width: width,
                child: Text(
                  "Project Title",
                  style: projectTitleStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: width,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin nisi eu eros consequat accumsan. Suspendisse ac est tellus. Phasellus congue congue egestas. Aenean vulputate enim ac purus dignissim facilisis. Donec nec odio turpis. Donec lobortis augue felis, a lobortis orci vulputate accumsan. Aenean nulla tortor, dictum id erat dapibus, bibendum porttitor ex.",
                  style: projectDescriptionStyle(),
                ),
              ),
            ],
          )),
        ),
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
