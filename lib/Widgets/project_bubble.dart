import 'package:flutter/material.dart';

class ProjectBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: GridTile(
          child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage("assets/images/AHV Logo.png"),
      )
          /*Container(
          child: Image(image: AssetImage("assets/images/AHV Logo.png")),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.blue,
              ],
            ),
          ),
        ),*/
          ),
    );
  }
}
