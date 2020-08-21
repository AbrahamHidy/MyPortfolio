import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/link_button.dart';
import 'package:my_portfolio/services/link_opener.dart';

class MainInfo extends StatelessWidget {
  LinkOpener linkOpener = new LinkOpener();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: MediaQuery.of(context).size.width / 8,
          backgroundImage: AssetImage("images/profileImage.jpg"),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.06,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          //height: MediaQuery.of(context).size.width / 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Abraham Hidy-Veksler',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                "Passionate for developing software for a positive impact on the world. Knowledge of Flutter and Java. Growing skills in Angular developement.",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinkButton(
                    text: 'My Resume',
                    onPressed: () {
                      linkOpener.launchInBrowser(
                          "https://drive.google.com/file/d/1ty_mwBLRZ-xpH2_EDJUTGJE6exKW_djF/view?usp=sharing");
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
