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
          Container(
            height: 8.h,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff0C0D15)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                width: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.detailmenus.length,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          items.getindex(index);
                        },
                        child: Container(
                          height: 4.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: items.colorchange(index)),
                          child: Center(
                            child: Text(
                              "${items.getmenu(index)}",
                              style: TextStyle(
                                  color: items.typecolorchange(index),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${items.detailmenus[items.selectedindex!]["firstHeader"]}",
                style:
                    GoogleFonts.inter(color: Color(0xffF8FAFC), fontSize: 15),
              ),
              SizedBox(height: 3.h),
              Text(
                "${items.detailmenus[items.selectedindex!]["firstHeaderContent"]}",
                style: GoogleFonts.inter(
                  fontSize: 13,
                  color: Color(0xffAAAFD7),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "${items.detailmenus[items.selectedindex!]["secondHeader"]}",
                style: GoogleFonts.inter(
                    fontSize: 15,
                    color: Color(0xffF8FAFC),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "${items.detailmenus[items.selectedindex!]["secondHeaderContent"]}",
                style:
                    GoogleFonts.inter(fontSize: 13, color: Color(0xffAAAFD7)),
              ),
            ],
          )
        ],
      );
    }));
  }
}

                /* Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      height: 4.h,
                      width: 28.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: descIndex == 0
                            ? Color(0xff1051F8)
                            : Color(0xff0C0D15),
                      ),
                      child: Center(
                        child: Text(
                          //Desc yazılacak yer
                          "",
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
                        color: descIndex == 1
                            ? Color(0xff1051F8)
                            : Color(0xff0C0D15),
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
                        color: descIndex == 2
                            ? Color(0xff1051F8)
                            : Color(0xff0C0D15),
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
              ), */
