import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items with ChangeNotifier {
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
}
