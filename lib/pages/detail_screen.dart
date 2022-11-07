// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:searching_app/features/apply_now.dart';
import 'package:searching_app/features/descriptionmenu.dart';
import 'package:searching_app/features/detail_job_appbar.dart';
import 'package:searching_app/items.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, Items items, widget) {
        return Scaffold(
          body: Column(
            children: [
              DetailjobAppbar(),
              SizedBox(height: 5.w),
              Container(
                height: 80.h,
                width: 100.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18)),
                    color: Color(0xff0E1926)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 8.w),
                      SvgPicture.asset(
                        "${items.popularJobsList[0]["Photo"]}",
                        height: 9.h,
                        width: 9.w,
                      ),
                      SizedBox(height: 2.w),
                      Text(
                        "${items.popularJobsList[0]["job"]}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2.w),
                      Text(
                        "${items.popularJobsList[0]["CompanyName"]}",
                        style: TextStyle(
                            color: Color(0xff40577D),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 3.w),
                      Container(
                        height: 5.5.h,
                        margin: EdgeInsets.only(left: 15.w),
                        child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 25.w,
                              margin: EdgeInsets.only(left: 2.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "${items.jobType[index]["jobtype"]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff2684FF)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 1.w),
                      Divider(
                        thickness: 0.4.w,
                        color: Color(0xff2B2D30),
                      ),
                      SizedBox(height: 2.w),
                      DescriptionMenu(),
                      SizedBox(height: 3.5.w),
                      AppyNow()
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
