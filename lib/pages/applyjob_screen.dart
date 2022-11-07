// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:searching_app/features/apply_appbar.dart';
import 'package:searching_app/features/submit_button.dart';
import 'package:searching_app/features/textformfield_cover.dart';
import 'package:searching_app/features/textformfield_name_website.dart';
import 'package:searching_app/features/upload_textfield.dart';

class ApplyJobScreen extends StatefulWidget {
  const ApplyJobScreen({super.key});

  @override
  State<ApplyJobScreen> createState() => _ApplyJobScreenState();
}

class _ApplyJobScreenState extends State<ApplyJobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ApplyAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Full name",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                Text(
                  "*",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(height: 4.w),
          SizedBox(height: 10.h, child: TextformfieldName()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Website, blog, or portfolio",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                Text(
                  "*",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(height: 4.w),
          SizedBox(height: 10.h, child: TextformfieldName()),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Upload CV",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                Text(
                  "*",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(height: 4.w),
          UploadTextfield(),
          SizedBox(height: 5.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Upload CV",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                Text(
                  "*",
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          SizedBox(height: 4.w),
          SizedBox(height: 20.h, child: TextformfieldCoverLetter()),
          SubmitButton()
        ],
      ),
    );
  }
}
