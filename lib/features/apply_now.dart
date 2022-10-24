import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searching_app/pages/applyjob_screen.dart';

class AppyNow extends StatefulWidget {
  const AppyNow({super.key});

  @override
  State<AppyNow> createState() => _AppyNowState();
}

class _AppyNowState extends State<AppyNow> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ApplyJobScreen()));
            },
            child: Container(
              height: 56,
              width: 326,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 30, 75, 190),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                "Apply Now",
                style: GoogleFonts.inter(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
            ),
          );
  }
}
