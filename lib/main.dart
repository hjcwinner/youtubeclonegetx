import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtubeclonegetx/biding/init_binding.dart';
import 'package:youtubeclonegetx/home.dart';
import 'package:youtubeclonegetx/page/compass_page.dart';
import 'package:youtubeclonegetx/page/library_page.dart';
import 'package:youtubeclonegetx/page/subs_page.dart';


void main() {runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: "/",
      initialBinding: InitBinding(),
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/compass", page: () => CompassPage()),
        GetPage(name: "/library", page: () => LibraryPage()),
        GetPage(name: "/subspage", page: () => SubsPage()),
      ],
    );
  }
}