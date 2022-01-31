import 'package:flutter/material.dart';
import 'package:qr_aft/src/pages/home_page.dart';
import 'package:get/get.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : ( BuildContext context) => HomePage()
      },
    );
  }
}
