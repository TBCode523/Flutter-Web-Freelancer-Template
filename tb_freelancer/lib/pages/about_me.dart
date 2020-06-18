import 'package:flutter/material.dart';
import 'package:tb_freelancer/styles/about_me_styles.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(90, 0, 0, 1),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return pcView(context);
        } else
          return phoneView(context);
      }),
    );
  }

  Widget phoneView(BuildContext context) {
    return Container(
      child: Column(
          // alignment: WrapAlignment.center,
          children: [
            Text(
              "ABOUT ME",
              style: aboutHeaderStyle(),
            ),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: [
                Image.asset(
                  'avatar.png',
                  scale: 2.5,
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin nisi eu eros consequat accumsan. Suspendisse ac est tellus. Phasellus congue congue egestas. Aenean vulputate enim ac purus dignissim facilisis. Donec nec odio turpis. Donec lobortis augue felis, a lobortis orci vulputate accumsan. Aenean nulla tortor, dictum id erat dapibus, bibendum porttitor ex.",
                      style: aboutBioStyle(),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }

  Widget pcView(BuildContext context) {
    return Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "ABOUT ME",
        style: aboutHeaderStyle(),
        textAlign: TextAlign.center,
      ),
      Center(
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: Axis.horizontal,
          children: [
            Image.asset(
              'avatar.png',
              scale: 1.5,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sollicitudin nisi eu eros consequat accumsan. Suspendisse ac est tellus. Phasellus congue congue egestas. Aenean vulputate enim ac purus dignissim facilisis. Donec nec odio turpis. Donec lobortis augue felis, a lobortis orci vulputate accumsan. Aenean nulla tortor, dictum id erat dapibus, bibendum porttitor ex.",
                    style: aboutBioStyle(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}
