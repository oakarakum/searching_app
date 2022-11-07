import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextformfieldName extends StatefulWidget {
  const TextformfieldName({super.key});

  @override
  State<TextformfieldName> createState() => _TextformfieldNameState();
}

class _TextformfieldNameState extends State<TextformfieldName> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 85.w,
      child: TextField(
        cursorHeight: 25,
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 22),
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
