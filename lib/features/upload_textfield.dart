import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UploadTextfield extends StatefulWidget {
  const UploadTextfield({super.key});

  @override
  State<UploadTextfield> createState() => _UploadTextfieldState();
}

class _UploadTextfieldState extends State<UploadTextfield> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(20),
        dashPattern: [5, 5],
        color: Color.fromARGB(255, 78, 86, 99),
        strokeWidth: 1.5,
        child: Container(
          height: 20.h,
          width: 80.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/detailpage_assets/download_icon.svg",
                  height: 25),
              SizedBox(
                height: 5.w,
              ),
              Text(
                "Format DOC,PDF,JPG",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff64748B)),
              ),
              SizedBox(
                height: 3.w,
              ),
              Text("Browse files",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1051F8))),
            ],
          ),
        ));
  }
}
