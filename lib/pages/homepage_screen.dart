import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:searching_app/features/bottom_navbar.dart';
import 'package:searching_app/features/home_appbar.dart';
import 'package:searching_app/features/popular_listview.dart';
import 'package:searching_app/features/searchbar.dart';
import 'package:searching_app/items.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, Items items, widget) {
      return Scaffold(
        bottomNavigationBar: BttomNavBar(),
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 23 ),
          child: Column(
            children: [
              SizedBox(height: 8.5.h, child: HomePageAppbar()),
              SizedBox(height: 70, child: SearchBar()),
              SizedBox(width: double.infinity,
                child: Row(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text("Popular Jobs",
                          style: TextStyle(
                              color: Color(
                                0xffF8FAFC,
                              ),
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Text("See All",
                              style: TextStyle(
                                  color: Color(0xff404040),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500)),
                    )
                    
                  ],
                ),
              ),
              Container(height: 70.h,margin: EdgeInsets.only(top: 10),
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),               
               child: PopularListView()),
            ],
          ),
        ),
      ));
    }));
  }
}
