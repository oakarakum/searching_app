// ignore_for_file: prefer_const_constructors

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
        children: [descMenu(), SizedBox(height: 10.h)],
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
