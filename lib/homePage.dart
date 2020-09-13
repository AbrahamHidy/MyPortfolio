import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/main_info.dart';
import 'package:my_portfolio/Widgets/menu_row.dart';
import 'package:my_portfolio/Widgets/project_bubble.dart';

class HomePage extends StatelessWidget {
  static const String route = '/homePage';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MenuRow(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                MainInfo(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  'Projects',
                  style: TextStyle(fontSize: 25, letterSpacing: 2),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.3),
                  child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 1,
                    children: [
                      ProjectBubble(AssetImage("assets/images/cloud_calc.jpg")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
