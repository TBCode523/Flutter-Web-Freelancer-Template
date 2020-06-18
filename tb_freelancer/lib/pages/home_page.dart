import 'package:flutter/material.dart';
import 'package:tb_freelancer/pages/contact_me.dart';
import 'package:tb_freelancer/pages/portfolio.dart';
import 'package:tb_freelancer/styles/navItemstyle.dart';
import 'about_me.dart';

class HomePage extends StatelessWidget {
  //TODO Find a way to make the navItems navigate to an id like element just like HTML
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          child: Text("Your Brand Here"),
          onTap: () {},
        ),
        actions: [
          FlatButton(
              splashColor: Colors.white,
              hoverColor: Colors.grey.withOpacity(.5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  "About",
                  style: navItemStyle(),
                ),
              ),
              onPressed: () {}),
          FlatButton(
              splashColor: Colors.white,
              hoverColor: Colors.grey.withOpacity(.5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  "Portfolio",
                  style: navItemStyle(),
                ),
              ),
              onPressed: () {}),
          FlatButton(
              splashColor: Colors.white,
              hoverColor: Colors.grey.withOpacity(.5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Text(
                  "Contact",
                  style: navItemStyle(),
                ),
              ),
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Flex(
          // alignment: WrapAlignment.center,
          direction: Axis.vertical,
          children: <Widget>[
            AboutMe(),
            Portfolio(),
            ContactMe(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 12,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Copyright © Your Website 2020",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
