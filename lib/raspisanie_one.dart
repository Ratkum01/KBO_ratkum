// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/navigation_drawe_page.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_alber_e.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_ilon_m.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_jon_k.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_mag_h.dart';
import 'package:school_aul/uchetelya/sami%20uchitelya/uchitel_stive_j.dart';

import 'uchetelya/list_uchetelya.dart';
import 'uchetelya/sami uchitelya/uchitel_tony_s.dart';

class RaspisanieOne extends StatefulWidget {
  const RaspisanieOne({super.key});

  @override
  State<RaspisanieOne> createState() => _RaspisanieOneState();
}

class _RaspisanieOneState extends State<RaspisanieOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Расписание'),
        backgroundColor: Color.fromARGB(248, 120, 66, 154),
        centerTitle: true,
      ),
      body: ListView( 
        children: [
          
          SizedBox(
            height: 5,
          ),
          Center(
              child: Text(
            'Понидельник',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 229, 229),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Қазақ тілі',
                      style: TextStyle(fontSize: 18,color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      '13:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Ocenka_uch();
                        }));
                      },
                      child: Text(
                        avaterMHrip().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '13:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Физика',
                      style: TextStyle(fontSize: 18,color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      '14:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color:  Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelTS();
                        }));
                      },
                      child: Text(
                        avaterTStark().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                             color:Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '14:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Алгебра',
                      style: TextStyle(fontSize: 18,color: Colors.black),
                    ),
                    Spacer(),
                    Text(
                      '14:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelJK();
                        }));
                      },
                      child: Text(
                        avaterJKennedy().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color:  Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '14:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),

//ВТОРНИККККККККК
          SizedBox(
            height: 3,
          ),
          Center(
              child: Text(
            'Вторник',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 229, 229),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Қазақстан Тарих',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '11:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelAE();
                        }));
                      },
                      child: Text(
                        avaterAlbertE().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '11:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black54,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Химия',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '12:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelSJ();
                        }));
                      },
                      child: Text(
                        avaterSJobs().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),

          // СРЕДАААААААААААААААа
          SizedBox(
            height: 3,
          ),

          Center(
              child: Text(
            'Среда',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 229, 229),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Қазақ тілі ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '08:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Ocenka_uch();
                        }));
                      },
                      child: Text(
                        avaterMHrip().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '08:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black54,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Алгебра',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '09:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelJK();
                        }));
                      },
                      child: Text(
                        avaterJKennedy().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '09:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black54,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Руский язык',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '10:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelIM();
                        }));
                      },
                      child: Text(
                        avaterIMusk().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '10:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
          //ЧЕТВЕРГ
          SizedBox(
            height: 3,
          ),

          Center(
              child: Text(
            'Четверг',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 229, 229),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Физика',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '11:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelTS();
                        }));
                      },
                      child: Text(
                        avaterTStark().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '11:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black54,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Алгебра',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '12:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelJK();
                        }));
                      },
                      child: Text(
                        avaterJKennedy().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '12:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black54,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Руский язык',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '13:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelIM();
                        }));
                      },
                      child: Text(
                        avaterIMusk().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '13:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
          //Пятница
          SizedBox(
            height: 3,
          ),
          Center(
              child: Text(
            'Пятница',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 229, 229, 229),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Қазақстан Тарих',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '08:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelAE();
                        }));
                      },
                      child: Text(
                        avaterAlbertE().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '09:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                  height: 5,
                  color: Colors.black54,
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Химия',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      '10:00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return UchitelSJ();
                        }));
                      },
                      child: Text(
                        avaterSJobs().username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(248, 120, 66, 154)),
                      ),
                    ),
                    Spacer(),
                    Text(
                      '10:45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
            ),
          ),
        ],
      ),
      drawer: const NavigationDrawer(),
    );
  }
}
