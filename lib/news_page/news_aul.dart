// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'package:school_aul/components/cadr.dart';
import 'package:school_aul/news_page/news_data.dart';
import 'package:school_aul/navigation_drawe_page.dart';
import 'package:school_aul/news_page/news_page.dart';

class News_aul extends StatefulWidget {
  const News_aul({Key? key}) : super(key: key);

  @override
  State<News_aul> createState() => _News_aulState();
}

class _News_aulState extends State<News_aul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Новости',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
         
          centerTitle: true,
          backgroundColor: Color.fromARGB(248, 120, 66, 154),
        ),
        drawer: const NavigationDrawer(),
        body:  News_page()

        );
  }
}
