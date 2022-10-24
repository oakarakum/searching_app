import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BttomNavBar extends StatefulWidget {
  const BttomNavBar({super.key});

  @override
  State<BttomNavBar> createState() => _BttomNavBarState();
}

class _BttomNavBarState extends State<BttomNavBar> {
  int indexs = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Color(0xff5786FF),
        unselectedItemColor: Color(0xff40577D),
        backgroundColor: Color(0xff0F0C07),
        type: BottomNavigationBarType.fixed,
        currentIndex: indexs,
        onTap: (value) {
          setState(() {
            indexs = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/homepage_assets/home.svg",
                color: Color(0xff40577D)),
            label: "Home",
            activeIcon: SvgPicture.asset(
              "assets/homepage_assets/home.svg",
              color: Color(0xff5786FF),
            ),
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/homepage_assets/activity.svg",
                  color: Color(0xff40577D)),
              activeIcon: SvgPicture.asset(
                "assets/homepage_assets/activity.svg",
                color: Color(0xff5786FF),
              ),
              label: "Activity"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/homepage_assets/favourite.svg",
                  color: Color(0xff40577D)),
              activeIcon: SvgPicture.asset(
                "assets/homepage_assets/favourite.svg",
                color: Color(0xff5786FF),
              ),
              label: "Saved"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/homepage_assets/profile.svg",
                  color: Color(0xff40577D)),
              activeIcon: SvgPicture.asset(
                "assets/homepage_assets/profile.svg",
                color: Color(0xff5786FF),
              ),
              label: "Profile"),
        ]);
  }
}
//assets\homepage_assets\activity.svg