import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:searching_app/pages/homepage_screen.dart';

class DetailjobAppbar extends StatefulWidget {
  const DetailjobAppbar({super.key});

  @override
  State<DetailjobAppbar> createState() => _DetailjobAppbarState();
}

class _DetailjobAppbarState extends State<DetailjobAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0xff0F0C07),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageScreen(),
                ));
          },
          child: Image.asset("assets/homepage_assets/Arrow-Left.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(children: [
              SvgPicture.asset(
                "assets/homepage_assets/favourite.svg",
                color: Colors.white,
              ),
              SizedBox(width: 10),
              SvgPicture.asset("assets/homepage_assets/Logout-Outline.svg")
            ]),
          ),
        ],
      ),
    );
  }
}
/* InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePageScreen(),
                ));
          }, */