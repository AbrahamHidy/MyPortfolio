import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/main_info.dart';
import 'package:my_portfolio/Widgets/menu_row.dart';

class HomePage extends StatelessWidget {
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
                //GridView.count(crossAxisCount: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
