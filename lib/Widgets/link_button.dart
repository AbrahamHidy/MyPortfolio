import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  LinkButton({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      borderSide: BorderSide(
        color: Colors.blue,
      ),
      highlightColor: Colors.lightBlue,
      child: Text(
        text,
      ),
      onPressed: onPressed,
    );
  }
}
