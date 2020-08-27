import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactRow extends StatelessWidget {
  final String text;
  final IconData decorator;
  ContactRow({Key key, this.text, this.decorator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: 20,
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(
            decorator,
            size: 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white10.withOpacity(0.95),
            ),
            child: Text(
              text,
              style: GoogleFonts.openSans(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
