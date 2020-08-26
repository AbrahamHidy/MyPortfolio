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
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage())),
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.01,
            ),
            PageButton(
              text: "Contact",
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
          ],
        ),
      ],
    );
  }
}
