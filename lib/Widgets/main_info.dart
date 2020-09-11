import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Widgets/link_button.dart';
import 'package:my_portfolio/services/link_opener.dart';

class MainInfo extends StatelessWidget {
  final LinkOpener linkOpener = new LinkOpener();
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width < 1000
              ? 50 + MediaQuery.of(context).size.width / 8
              : 180,
          backgroundImage: AssetImage("assets/images/profileImage.jpg"),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.06,
        ),
        Container(
          width: MediaQuery.of(context).size.width > 1000
              ? MediaQuery.of(context).size.width / 2
              : MediaQuery.of(context).size.width / 1.18,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Abraham Hidy-Veksler',
                style: GoogleFonts.poiretOne(
                  textStyle: TextStyle(
                    fontSize: 38,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Passionate for developing software for a positive impact on the world.\nKnowledge of Flutter and Java. Growing skills in Angular.",
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  LinkButton(
                    text: 'GitHub',
                    onPressed: () {
                      linkOpener
                          .launchInBrowser("https://github.com/AbrahamHidy");
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  LinkButton(
                    text: 'My Resume',
                    onPressed: () {
                      linkOpener.launchInBrowser(
                          "https://drive.google.com/file/d/1BbAVsRP29guxucElPD3fxvcL9B3yaD3d/view?usp=sharing");
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  LinkButton(
                    text: 'LinkedIn',
                    onPressed: () {
                      linkOpener.launchInBrowser(
                          "http://www.linkedin.com/in/abraham-hidy-veksler");
                    },
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
