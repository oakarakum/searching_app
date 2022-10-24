import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePageAppbar extends StatefulWidget {
  const HomePageAppbar({super.key});

  @override
  State<HomePageAppbar> createState() => _HomePageAppbarState();
}

class _HomePageAppbarState extends State<HomePageAppbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              "Welcome!",
              style: GoogleFonts.inter(
                  color: Color(0xff94A3B8),
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 2.w),
            Text(
              "Jon Doe",
              style: GoogleFonts.inter(
                  color: Color(0xffF8FAFC),
                  fontSize: 19,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/HomePageAssets/Notification.svg"),
          iconSize: 40,
        )
      ],
    );
  }
}
