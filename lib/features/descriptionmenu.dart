// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:searching_app/items.dart';

class DescriptionMenu extends StatefulWidget {
  const DescriptionMenu({super.key});

  @override
  State<DescriptionMenu> createState() => _DescriptionMenuState();
}

class _DescriptionMenuState extends State<DescriptionMenu> {
  int descIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, Items items, widget) {
      return Column(
        children: [
          descMenu(),
          SizedBox(height: 10.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                descIndex == 0 ? "Job Description" : "",
                style:
                    GoogleFonts.inter(color: Color(0xffF8FAFC), fontSize: 15),
              ),
              SizedBox(height: 3.h),
              Text(
                descIndex == 0
                    ? "Ready to help unleash the power of teams across the\nglobe?\nWe're looking for a Product Designer to join our Cloud\nSecurity team. Jira Software, Jira Service Management,\nConfluence, and Bitbucket Data Center are Atlassian’s\non-premise offers used by our largest and most\ncomplex customers."
                    : "",
                style: GoogleFonts.inter(
                  fontSize: 13,
                  color: Color(0xffAAAFD7),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                descIndex == 0 ? "Responsibilities" : "",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Color(0xffF8FAFC),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                descIndex == 0
                    ? "# Work on projects across all our Cloud products\n# Harness your product design skills to help\nstreamline the critical experience for our users."
                    : "",
                style:
                    GoogleFonts.inter(fontSize: 13, color: Color(0xffAAAFD7)),
              ),
            ],
          )
        ],
      );
    }));
  }

  Container descMenu() {
    return Container(
      height: 8.h,
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xff0C0D15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  descIndex = 0;
                });
              },
              child: Container(
                height: 4.h,
                width: 28.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: descIndex == 0 ? Color(0xff1051F8) : Color(0xff0C0D15),
                ),
                child: Center(
                  child: Text(
                    "Descriptions",
                    style: TextStyle(
                        color: descIndex == 0
                            ? Color(0xffFFFFFF)
                            : Color(0xff40577D),
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  descIndex = 1;
                });
              },
              child: Container(
                height: 4.h,
                width: 28.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: descIndex == 1 ? Color(0xff1051F8) : Color(0xff0C0D15),
                ),
                child: Center(
                  child: Text(
                    "Company",
                    style: TextStyle(
                        color: descIndex == 1
                            ? Color(0xffFFFFFF)
                            : Color(0xff40577D),
                        fontSize: 15),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  descIndex = 2;
                });
              },
              child: Container(
                height: 4.h,
                width: 28.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: descIndex == 2 ? Color(0xff1051F8) : Color(0xff0C0D15),
                ),
                child: Center(
                  child: Text(
                    "Applicant",
                    style: TextStyle(
                        color: descIndex == 2
                            ? Color(0xffFFFFFF)
                            : Color(0xff40577D),
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
