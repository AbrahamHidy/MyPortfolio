import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/main_info.dart';
import 'package:my_portfolio/Widgets/page_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/AHV Logo.png",
          height: 40,
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Portfolio',
                    style: TextStyle(fontSize: 25, letterSpacing: 2),
                  ),
                  Row(
                    children: [
                      PageButton(
                        text: "About",
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      PageButton(
                        text: "Contact",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              MainInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
