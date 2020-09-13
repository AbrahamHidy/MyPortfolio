import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/contact_row.dart';
import 'package:my_portfolio/Widgets/menu_row.dart';

class ContactPage extends StatelessWidget {
  static const String route = '/contact';

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
            image: AssetImage("assets/images/backgroundTexture.jpg"),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MenuRow(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Text(
                    'Contact',
                    style: TextStyle(fontSize: 25, letterSpacing: 2),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ContactRow(
                          decorator: Icons.phone, text: "+46 (0) 72 848 58 54"),
                      ContactRow(
                          decorator: Icons.email,
                          text: "abrahamhidy@outlook.com"),
                    ],
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
