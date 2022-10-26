import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items with ChangeNotifier {
  int? selectedindex = 0;
  int? indexx;
  List popularJobsList = [
    {
      "Photo": "assets/homepage_assets/altasian-logo.svg",
      "CompanyName": "Altasian",
      "job": "Product Designer",
      "location": "Dublin, Ireland",
    },
    {
      "Photo": "assets/homepage_assets/one pro.svg",
      "CompanyName": "One pro",
      "job": "Product Designer",
      "location": "Miami, USA",
    },
    {
      "Photo": "assets/homepage_assets/shopify.svg",
      "CompanyName": "Shopify",
      "job": "Data Analytics",
      "location": "Ottawa, Ireland",
    },
    {
      "Photo": "assets/homepage_assets/shopify.svg",
      "CompanyName": "Shopify",
      "job": "Data Analytics",
      "location": "Ottawa, Ireland",
    },
  ];

  List jobType = [
    {
      "jobtype": "Freelance",
    },
    {
      "jobtype": "Part time",
    },
    {
      "jobtype": "Remote",
    },
  ];

  List detailmenus = [
    {
      "menuname": "Description",
      "firstHeader": "Job Descriptions:",
      "firstHeaderContent":
          "Ready to help unleash the power of teams across the\nglobe?\nWe're looking for a Product Designer to join our Cloud\nSecurity team. Jira Software, Jira Service Management,\nConfluence, and Bitbucket Data Center are Atlassian’s\non-premise offers used by our largest and most\ncomplex customers.",
      "secondHeader": "Responsibilities:",
      "secondHeaderContent":
          "# Work on projects across all our Cloud products\n# Harness your product design skills to help\nstreamline the critical experience for our users."
    },
    {
      "menuname": "Company",
      "firstHeader": "Sector",
      "firstHeaderContent": "Programming",
      "secondHeader": "Active Projects:",
      "secondHeaderContent": "Projects A"
    },
    {
      "menuname": "Applicant",
      "firstHeader": "Applicant Requirements:",
      "firstHeaderContent": "5 years of experince",
      "secondHeader": "Responsibilities:",
      "secondHeaderContent": "Team Leader"
    },
  ];
  getmenu(int selectedindex) {
    return detailmenus[selectedindex]["menuname"].toString();
  }

  /* getfirstheader(int selectedindex) {
    return detailmenus[selectedindex]["firstHeader"].toString();
  } */

  /* onTapFunction(int index) {
    selectedindex = index;
    notifyListeners();
  } */

  getindex(int value) {
    selectedindex = value;
    notifyListeners();
  }

  colorchange(int value) {
    if (selectedindex == value) {
      return Color(0xff1051F8);
    } else {
      return Color(0xff0C0D15);
    }
  }

  typecolorchange(int value) {
    if (selectedindex == value) {
      return Color(0xffFFFFFF);
    } else {
      return Color(0xff40577D);
    }
  }
}
