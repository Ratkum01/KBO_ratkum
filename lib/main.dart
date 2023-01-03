// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:profile/profile.dart';
import 'package:school_aul/login_page/auth/main_page.dart';
import 'package:school_aul/uchetelya/list_uchetelya.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_mag_h.dart';
import 'package:school_aul/profile_aul/edit_profile_page.dart';
import 'package:school_aul/profile_aul/utils/user_perferences.dart';
import 'package:school_aul/raspis.dart';
import 'package:school_aul/themes.dart';
import 'package:theme_provider/theme_provider.dart';
import 'login_page/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: 
            // ListUchitelya()
            // MainPage(),
            Raspis()
          );
  }
}