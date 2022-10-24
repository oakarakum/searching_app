import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextformfieldCoverLetter extends StatefulWidget {
  const TextformfieldCoverLetter({super.key});

  @override
  State<TextformfieldCoverLetter> createState() => _TextformfieldCoverLetterState();
}

class _TextformfieldCoverLetterState extends State<TextformfieldCoverLetter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 85.w,
      child: TextField(
        cursorHeight: 20,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: "Write something...",
          hintStyle: TextStyle(color: Color(0xff94A3B8), fontSize: 16),
          contentPadding: EdgeInsets.only(left: 15,bottom: 100,top: 20),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1.25, color: Color(0xff334155))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1.25, color: Color(0xff334155))),
        ),
      ),
    );
  }
}