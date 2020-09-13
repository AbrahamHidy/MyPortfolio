import 'package:flutter/material.dart';
import 'package:my_portfolio/homePage.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/views/about.dart';
import 'package:my_portfolio/views/contact.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        ContactPage.route: (context) => ContactPage(),
        AboutPage.route: (context) => AboutPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        //fontFamily: "GoogleSansRegular",
      ),
      home: HomePage(),
    );
  }
}
