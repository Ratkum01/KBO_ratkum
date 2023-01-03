import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/login_page/pages/login_page.dart';
import 'package:school_aul/profile_aul/model/user.dart';
import 'package:school_aul/raspis.dart';

import '../../glavka.dart';
import 'auth_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot ) {
          if(snapshot.hasData){
            return 
            Glavka();
            // Raspis();
          }
          else {
            return AuthPage();

          }
        }
      ),
    );
  }
}
