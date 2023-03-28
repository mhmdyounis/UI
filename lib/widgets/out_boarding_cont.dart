import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class OutBordingConting extends StatelessWidget {
  const OutBordingConting(
      {Key? key,
        required this.imageName,
        required this.text,
        required this.title})
      : super(key: key);
  final String text;
  final String title;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('image/$imageName.jpg',height: 280,),
        SizedBox(height: 19),
        Text(title,
            style: GoogleFonts.aBeeZee(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87)),
        SizedBox(height: 21),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 34),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Color(0xff716F87)),
          ),
        )
      ],
    );
  }
}