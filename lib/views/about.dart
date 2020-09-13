import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Widgets/about-item.dart';
import 'package:my_portfolio/Widgets/link_button.dart';
import 'package:my_portfolio/Widgets/menu_row.dart';

class AboutPage extends StatelessWidget {
  static const String route = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Image.asset(
          "assets/images/AHV Logo.png",
          height: 40,
        ),
        actions: [],
      ),*/
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: AssetImage("assets/images/sunset.jpg"),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MenuRow(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'About',
                    style: TextStyle(fontSize: 25, letterSpacing: 2),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AboutItem(
                    text:
                        "I am a software developer with competencies in Flutter and Angular frameworks, as well as in Java.\n\nDuring my education, I have Studied and lived in the United States, Austria, and Sweden in the engineering and software fields, gaining a strong respect for the strength of international teams.",
                  ),
                  AboutItem(
                    text:
                        "My education began in the US, where I studied in a Mechanical Engineering program. I gained much valuable knowledge in physics, calculus, and 3d-Design, but ultimately found that my interests lie elswhere. I completed the first year of the Software Technology Program at Linnaeus University in Växjö, Sweden.\n\nNow I live in Luleå, Sweden, and continue to grow and develope my ablities through online courses and self-teaching.",
                  ),
                  AboutItem(
                    text:
                        "Projects which make meaningful positive to contributions to the world are particularly interesting to me! From making workplaces safer, to reducing human's impact on the environment, to the production of music and art to enrich people's lives.",
                  ),
                  AboutItem(
                    text:
                        "Currently searching for employment in a trainee or junion position as in order to contribute to meaningful projects.",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
