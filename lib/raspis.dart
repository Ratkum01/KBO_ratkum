// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:school_aul/camera_aul/camera_aul.dart';
import 'package:school_aul/navigation_drawe_page.dart';
import 'package:school_aul/news_page/news_aul.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_mag_h.dart';
import 'package:school_aul/profile_aul/profile_aul_glav.dart';
import 'package:school_aul/raspisanie_one.dart';
import 'package:school_aul/kursi_aul/kurs_aul.dart';

class Raspis extends StatefulWidget {
  const Raspis({Key? key}) : super(key: key);
  @override
  State<Raspis> createState() => _RaspisState();
}

class _RaspisState extends State<Raspis> {
  //final user = FirebaseAuth.instance.currentUser!;
  int index = 0;
  final screens = [
    News_aul(),

    Camera_aul(),
    RaspisanieOne(),

    // Video_aul(),
    // Profile_aul(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: Colors.white,
            indicatorColor: Color.fromARGB(248, 147, 97, 177)),
        // indicatorColor: Color()),
        child: NavigationBar(
          height: 60,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          // ignore: prefer_const_literals_to_create_immutables
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.newspaper_rounded), 
                label: 'Новости'),

            NavigationDestination(
                icon: Icon(Icons.camera_alt_outlined),
                 label: 'Камера'),
            NavigationDestination(
                icon: Icon(Icons.list_alt_outlined),
                 label: 'Расписамние'),

            // NavigationDestination(
            //     icon: Icon(Icons.live_tv_rounded), label: 'Video'),
            // NavigationDestination(
            //     icon: Icon(Icons.person_outline_rounded), label: 'Profile')
          ],
        ),
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
