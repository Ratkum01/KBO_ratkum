import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/kursi_aul/kurs_besp.dart';
import 'package:school_aul/kursi_aul/kurs_plat.dart';

class Kurs_aul extends StatefulWidget {
  const Kurs_aul({super.key});

  @override
  State<Kurs_aul> createState() => _Kurs_aulState();
}

class _Kurs_aulState extends State<Kurs_aul> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Курсы'),
          backgroundColor: Color.fromARGB(248, 120, 66, 154),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              child: Text('Бесплатные курсы', style: TextStyle(color:Color.fromARGB(248, 1, 211, 43) ),),
              icon: Icon(Icons.money_off_csred_rounded, color:Color.fromARGB(248, 1, 211, 43),)
              ,
            ),
            Tab(
             child: Text('Платные курсы', ),
              icon: Icon(Icons.attach_money_rounded,)
            )
          ]),
        ),
        body: TabBarView(children: [
          Besplatni_kurs(),
          Platni_kurs()
        ]),
      ),
    );
  }
}
