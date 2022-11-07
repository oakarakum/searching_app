import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:searching_app/items.dart';
import 'package:searching_app/pages/homepage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: ((context, orientation, ScreenType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<Items>(
              create: ((context) =>
                  Items())) //item içindeki değere göre yazılacak
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                scaffoldBackgroundColor: Color(0xff0C0D15)),
            home: HomePageScreen()),
      );
    }));
  }
}
