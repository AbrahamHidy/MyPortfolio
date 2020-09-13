import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/page_button.dart';
import 'package:my_portfolio/homePage.dart';
import 'package:my_portfolio/views/about.dart';
import 'package:my_portfolio/views/contact.dart';

class MenuRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MaterialButton(
          onPressed: () => Navigator.pushNamed(context, HomePage.route),
          child: Image.asset(
            "assets/images/AHV Logo.png",
            height: 40,
          ),
        ),
        Row(
          children: [
            PageButton(
              text: "About",
              onPressed: () {
                Navigator.pushNamed(context, AboutPage.route);
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            PageButton(
              text: "Contact",
              onPressed: () {
                Navigator.pushNamed(context, ContactPage.route);
              },
            ),
          ],
        ),
      ],
    );
  }
}
