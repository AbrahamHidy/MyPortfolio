import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  PageButton({Key key, this.text, this.onPressed}) : super(key: key);

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
