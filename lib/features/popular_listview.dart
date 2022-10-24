// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:searching_app/items.dart';

class PopularListView extends StatefulWidget {
  PopularListView({super.key});
  
  @override
  State<PopularListView> createState() => _PopularListViewState();
}

class _PopularListViewState extends State<PopularListView> {
  bool favIndex = true;
  
  
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, Items items, widget) {
      return SizedBox(
        child: ListView.builder(
          itemCount: items.popularJobsList.length,
          itemBuilder: ((context, index) {
          return Container(
        height: 18.h,
        width: 110.w,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Color(0xff0F1926),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("${items.popularJobsList[index]["Photo"]}"
                          ),
                          
 
                      SizedBox(
                        width: 3.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${items.popularJobsList[index]["CompanyName"]}",
                            style: GoogleFonts.inter(
                              fontSize: 13,
                              color: Color(0xff40577D),
                            ),
                          ),
                          SizedBox(
                            height: 1.w,
                          ),
                          Text(
                            "${items.popularJobsList[index]["job"]}",
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Color(0xffF8FAFC),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          favIndex = !favIndex;
                        });
                      },
                      child: favIndex == true
                          ? SvgPicture.asset("assets/homepage_assets/fav.svg")
                          : SvgPicture.asset(
                              "assets/homepage_assets/fav-red.svg"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.5.w,
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.w),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/homepage_assets/location.svg"),
                    SizedBox(
                      width: 3.5.w,
                    ),
                    Text(
                      "${items.popularJobsList[index]["location"]}",
                      style: GoogleFonts.inter(
                          color: Color(0xff40577D), fontSize: 13),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.5.w,
              ),
              SizedBox(
                height: 24,
                width: 400,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          height: 40,
                          width: 73,
                          decoration: BoxDecoration(
                              color: Color(0xff0F0C07),
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              //"${item.basket![index]["title"]}",
                              "${items.jobType[index]["jobtype"]}",
                              style: GoogleFonts.inter(
                                  color: Color(0xff2684FF),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ),
      );
        })),
      );
    }));
  }
}
