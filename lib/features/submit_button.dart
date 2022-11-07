import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searching_app/pages/applyjob_screen.dart';
import 'package:searching_app/pages/homepage_screen.dart';

class SubmitButton extends StatefulWidget {
  const SubmitButton({super.key});

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()));
            },
            child: Container(
              height: 56,
              width: 326,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 30, 75, 190),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                "Submit Application",
                style: GoogleFonts.inter(
                    color: Color(0xffFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              )),
            ),
          );
  }
}