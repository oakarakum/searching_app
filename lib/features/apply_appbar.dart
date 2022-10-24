import 'package:flutter/material.dart';
import 'package:searching_app/features/detail_job_appbar.dart';

class ApplyAppbar extends StatefulWidget {
  const ApplyAppbar({super.key});

  @override
  State<ApplyAppbar> createState() => _ApplyAppbarState();
}

class _ApplyAppbarState extends State<ApplyAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Color(0xff0F0C07),
        title: Text("Apply Job",style: TextStyle(fontSize: 20),),
         
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailjobAppbar(),
                ));
          },
          child: Image.asset("assets/homepage_assets/Arrow-Left.png"),
        ),
        
      ),
    );
  }
}